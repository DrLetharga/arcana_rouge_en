import os
import sys
import subprocess
import json
import time
from pathlib import Path
import platform as pf

# Constants
ROOT = Path(__file__).resolve().parent.parent
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


# === Post-process with whisper_extra ===
import pandas as pd
from whisper_extra.cleanup_short_segments import cleanup_short_or_garbled_segments
from whisper_extra.emotion_reclassifier import EmotionReclassifier

with open(json_out, "r", encoding="utf-8") as f:
    post_data = json.load(f)

df = pd.DataFrame(post_data)
df = cleanup_short_or_garbled_segments(df)
df = EmotionReclassifier().apply(df)

# Save updated JSON
with open(json_out, "w", encoding="utf-8") as f:
    json.dump(df.to_dict(orient="records"), f, ensure_ascii=False, indent=2)

print("[*] Cleanup and emotion reclassification complete.")


print(f"[*] Transcription complete. {len(metadata)} segments saved to {json_out}")