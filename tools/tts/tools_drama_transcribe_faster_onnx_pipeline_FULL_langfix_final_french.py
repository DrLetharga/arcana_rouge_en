import os
import sys
import subprocess
import json
import time
from pathlib import Path
import platform as pf

# Constants
ROOT = Path(__file__).resolve()
TTS_DIR = ROOT / "tts"
ENV_DIR = TTS_DIR / "whisper-env"
INPUT_FILE = ROOT / "tts" / "Akane_NurseDiary_converted.wav"
OUTPUT_DIR = TTS_DIR / "tts_prepped" / "drama_onnx"

if pf.system() == "Windows":
    PYTHON_BIN = ENV_DIR / "Scripts" / "python.exe"
else:
    PYTHON_BIN = ENV_DIR / "bin" / "python"

# Ensure dependencies
def install_if_missing(module, package=None):
    try:
        __import__(module)
    except ImportError:
        pkg = package if package else module
        subprocess.run([str(PYTHON_BIN), "-m", "pip", "install", pkg], check=True)

install_if_missing("psutil")
install_if_missing("librosa")
install_if_missing("faster_whisper")
install_if_missing("onnxruntime-gpu")
install_if_missing("pandas")

import psutil
from faster_whisper import WhisperModel

# GPU memory monitor
def get_gpu_memory():
    try:
        output = subprocess.check_output(
            ["nvidia-smi", "--query-gpu=memory.used", "--format=csv,nounits,noheader"]
        )
        mem_used = int(output.decode().strip().split("\n")[0])
        return mem_used
    except Exception:
        return -1

# Force ONNX backend by setting an env var (CT2 is default if both exist)
os.environ["CT2_FORCE_CPU"] = "1"

# Load model (will fallback to ONNXRuntime)
model = WhisperModel("large", device="cuda", compute_type="float16")
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

# Wait for available VRAM
while (mem := get_gpu_memory()) > 9000 and mem != -1:
    print(f"[!] GPU memory high ({mem} MB), waiting...")
    time.sleep(10)

# Transcribe with word-level timestamps
segments, _ = model.transcribe(str(INPUT_FILE), language="ja", word_timestamps=True)

# Collect and export results
metadata = []
for i, seg in enumerate(segments):
    entry = {
        "segment_id": f"segment_{i+1:03}",
        "start": round(seg.start, 2),
        "end": round(seg.end, 2),
        "text": seg.text.strip(),
        "emotion": "neutral",
    }
    if hasattr(seg, "words") and seg.words:
        entry["words"] = [{"word": w.word, "start": round(w.start, 2), "end": round(w.end, 2)} for w in seg.words]
    metadata.append(entry)

# Save JSON
json_out = OUTPUT_DIR / "drama_transcription_onnx.json"
with open(json_out, "w", encoding="utf-8") as f:
    json.dump(metadata, f, ensure_ascii=False, indent=2)

# === Full Post-processing Pipeline with whisper_extra ===
from whisper_extra.audio_analysis import analyze_segments
from whisper_extra.cleanup_short_segments import cleanup_short_or_garbled_segments
from whisper_extra.emotion_reclassifier import EmotionReclassifier
from whisper_extra.validation import validate_transcript
import pandas as pd

# Step 1: Add pitch, pacing, and base structure to transcript
analyze_segments(
    transcript_path=json_out,
    wav_path=str(INPUT_FILE),
    output_path=json_out
)

# Step 2: Load enriched segments
with open(json_out, "r", encoding="utf-8") as f:
    segments = json.load(f)
df = pd.DataFrame(segments)

# Step 3: Clean garbled/invalid segments
df = cleanup_short_or_garbled_segments(df)

# Step 4: Annotate metadata: intent, lang, segment_type, quality_score
def detect_language(text):
    import re
    if re.search(r'[\u3040-\u309F\u30A0-\u30FF]', text):
        return "ja"  # Hiragana or Katakana present
    elif re.search(r'[\u4E00-\u9FFF]', text):
        if re.search(r'[。、ぁ-んァ-ン]', text):
            return "ja"  # Kanji with kana = Japanese
        return "zh"      # Pure Hanzi = likely Chinese
    elif re.search(r'[a-zA-Z]', text):
        return "en"
    return "und"


def enrich_metadata(row):
    text = row.get("text", "")
    row["intent"] = (
        "inner_monologue" if text.strip().startswith("（") or text.strip().startswith("(")
        else "dialogue"
    )
    row["lang"] = detect_language(text)
    row["segment_type"] = (
        "fx" if row.get("emotion") == "{fx}"
        else "skip" if row.get("emotion") == "{tts:skip}"
        else "verbal"
    )
    row["quality_score"] = round(
        1.0
        - 0.3 * int(row["segment_type"] in ["fx", "skip"])
        - 0.3 * int(row.get("words_per_sec", 0) < 1.2)
        - 0.2 * int((row.get("pitch_stddev") or 0) < 5),
        2
    )
    return row

df = df.apply(enrich_metadata, axis=1)

# Step 5: Reclassify emotion and score confidence
def score_emotion(text, tag):
    base_keywords = EmotionReclassifier().rules.get(tag, [])
    return round(0.5 + 0.1 * sum(k in text for k in base_keywords), 2)

df = EmotionReclassifier().apply(df)
df["emotion_confidence"] = df.apply(lambda r: score_emotion(r["text"], r["emotion"]), axis=1)

# Step 6: Save output and validate
final_json = json_out.parent / "drama_transcription_complete.json"
final_csv = final_json.with_suffix(".csv")
df.to_json(final_json, force_ascii=False, indent=2, orient="records")
df.to_csv(final_csv, index=False, encoding="utf-8")

print(f"[*] Final output written to {final_json} and {final_csv}")
validate_transcript(final_json, final_json.with_name("validation_log.txt"))