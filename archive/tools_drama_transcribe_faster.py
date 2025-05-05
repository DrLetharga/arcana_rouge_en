#!/usr/bin/env python3
import os
import sys
import subprocess
import shutil
import json
import time
from pathlib import Path

# Constants
ROOT = Path(__file__).resolve().parent.parent
TTS_DIR = ROOT / "tts"
ENV_DIR = TTS_DIR / "whisper-env"
INPUT_FILE = ROOT / "tts" / "Akane_NurseDiary_converted.wav"
OUTPUT_DIR = TTS_DIR / "tts_prepped" / "drama"
PYTHON_BIN = ENV_DIR / "bin" / "python"

# Step 1: Set up whisper-env if it doesn't exist
if not ENV_DIR.exists():
    print("🔧 Creating virtual environment in /tts/whisper-env...")
    subprocess.run([sys.executable, "-m", "venv", str(ENV_DIR)], check=True)
    subprocess.run([str(PYTHON_BIN), "-m", "pip", "install", "--upgrade", "pip"], check=True)
    subprocess.run([str(PYTHON_BIN), "-m", "pip", "install", "faster-whisper", "psutil"], check=True)

# Step 2: GPU VRAM monitor
import subprocess

def get_gpu_memory():
    try:
        output = subprocess.check_output(
            ["nvidia-smi", "--query-gpu=memory.used", "--format=csv,nounits,noheader"]
        )
        mem_used = int(output.decode().strip().split("\n")[0])
        return mem_used
    except Exception:
        return -1

# Step 3: Transcribe with Faster-Whisper
from faster_whisper import WhisperModel

model = WhisperModel("large", device="cuda", compute_type="float16")
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

# Wait for available VRAM
while (mem := get_gpu_memory()) > 9000 and mem != -1:
    print(f"⚠️ GPU memory high ({mem} MB), waiting...")
    time.sleep(10)

# Transcribe
segments, _ = model.transcribe(str(INPUT_FILE), language="ja", word_timestamps=True)

# Emotion tagging
def tag_emotion(text):
    if any(x in text for x in ["いっちゃう", "だめぇ", "あっ", "んんん", "イク"]):
        return "climax"
    elif any(x in text for x in ["やめて", "いや", "ダメ"]):
        return "beg"
    elif any(x in text for x in ["うええん", "泣", "ぐすっ"]):
        return "cry"
    elif any(x in text for x in ["ふふ", "くす", "クスクス"]):
        return "mocking"
    return "neutral"

# Collect segments and export
metadata = []
for i, seg in enumerate(segments):
    start = f"{seg.start:.2f}"
    end = f"{seg.end:.2f}"
    text = seg.text.strip()
    tag = tag_emotion(text) if text else "{tts:skip}"
    metadata.append({
        "segment_id": f"segment_{i+1:03}",
        "start": start,
        "end": end,
        "text": text,
        "emotion": tag
    })

# Save metadata
json_out = OUTPUT_DIR / "drama_transcription.json"
with open(json_out, "w", encoding="utf-8") as f:
    json.dump(metadata, f, ensure_ascii=False, indent=2)

print(f"✅ Transcription complete. {len(metadata)} segments saved to {json_out}")