#!/usr/bin/env python3
import os
import sys
import subprocess
import shutil
import json
from pathlib import Path
from collections import defaultdict

# Constants
ROOT = Path(__file__).resolve().parent.parent
SOURCE_DIR = ROOT / "source" / "s_voice"
TTS_DIR = ROOT / "tts"
ENV_DIR = TTS_DIR / "whisper-env"
OUTPUT_DIR = TTS_DIR / "tts_prepped"
CHECKPOINTS_FILE = OUTPUT_DIR / "transcription_checkpoints.json"
PYTHON_BIN = ENV_DIR / "bin" / "python"

# Step 1: Set up whisper-env if it doesn't exist
if not ENV_DIR.exists():
    print("🔧 Creating virtual environment in /tts/whisper-env...")
    subprocess.run([sys.executable, "-m", "venv", str(ENV_DIR)], check=True)
    subprocess.run([str(PYTHON_BIN), "-m", "pip", "install", "--upgrade", "pip"], check=True)
    subprocess.run([str(PYTHON_BIN), "-m", "pip", "install", "faster-whisper", "psutil"], check=True)

# Step 2: GPU VRAM monitor
import psutil
import time
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

# Step 3: Run transcription using Faster-Whisper
from faster_whisper import WhisperModel

model = WhisperModel("medium", device="cuda", compute_type="float16")

# Load checkpoints
if CHECKPOINTS_FILE.exists():
    with open(CHECKPOINTS_FILE, "r", encoding="utf-8") as f:
        processed_files = set(json.load(f))
else:
    processed_files = set()

# Group files by character
files_by_character = defaultdict(list)
for file in SOURCE_DIR.glob("*.ogg"):
    if file.name in processed_files:
        continue
    char = file.stem.split("_")[0]
    files_by_character[char].append(file)

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

# Transcribe per character
for char, files in files_by_character.items():
    print(f"🎙️ Processing {len(files)} files for {char}...")
    char_output = OUTPUT_DIR / char
    wav_dir = char_output / "wavs"
    wav_dir.mkdir(parents=True, exist_ok=True)
    metadata = []

    for audio_file in sorted(files):
        base = audio_file.stem
        wav_path = wav_dir / f"{base}.wav"

        # Convert to wav
        subprocess.run([
            "ffmpeg", "-y", "-i", str(audio_file),
            "-ac", "1", "-ar", "22050", str(wav_path)
        ], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        # Wait if VRAM is too high
        while (mem := get_gpu_memory()) > 9000 and mem != -1:
            print(f"⚠️ GPU memory high ({mem} MB), waiting...")
            time.sleep(10)

        segments, _ = model.transcribe(str(wav_path), language="ja", word_timestamps=True)

        seg_list = list(segments)
        if not seg_list:
            metadata.append(f"{wav_path.name}|<empty>|{{tts:skip}}")
        else:
            for seg in seg_list:
                start = f"{seg.start:.2f}"
                end = f"{seg.end:.2f}"
                text = seg.text.strip()
                tag = tag_emotion(text) if text else "{tts:skip}"
                metadata.append(f"{wav_path.name}|{text}|{tag}|{start}-{end}")

        processed_files.add(audio_file.name)

    # Write metadata
    meta_csv_path = char_output / "metadata.csv"
    with open(meta_csv_path, "w", encoding="utf-8") as f:
        for line in metadata:
            f.write(line + "\n")

# Save checkpoints
with open(CHECKPOINTS_FILE, "w", encoding="utf-8") as f:
    json.dump(sorted(processed_files), f, ensure_ascii=False, indent=2)

print("✅ Done.")