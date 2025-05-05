import os
import shutil
import subprocess
from pathlib import Path
from collections import defaultdict
import whisper

# Configuration
SOURCE_DIR = Path("source/s_voice")
OUTPUT_DIR = Path("tts_prepped")
MODEL_SIZE = "base"  # Change to "medium" or "large" for higher accuracy
AUDIO_FORMAT = "wav"

# Prepare Whisper model
model = whisper.load_model(MODEL_SIZE)

# Collect files by character
files_by_character = defaultdict(list)
for file in SOURCE_DIR.glob("*.ogg"):
    char = file.stem.split("_")[0]
    files_by_character[char].append(file)

# Process files
for char, files in files_by_character.items():
    print(f"Processing {len(files)} files for {char}...")
    char_output = OUTPUT_DIR / char
    char_output.mkdir(parents=True, exist_ok=True)
    metadata_lines = []

    for audio_file in sorted(files):
        wav_path = char_output / f"{audio_file.stem}.{AUDIO_FORMAT}"
        # Convert .ogg to .wav using ffmpeg
        subprocess.run([
            "ffmpeg", "-y", "-i", str(audio_file),
            "-ac", "1", "-ar", "22050", str(wav_path)
        ], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        # Transcribe using Whisper
        result = model.transcribe(str(wav_path), language="ja")
        text = result.get("text", "").strip()

        # Auto-tag (very simple heuristic, adjust as needed)
        def tag_emotion(line):
            if any(word in line for word in ["いっちゃう", "だめぇ", "あっ", "んんん", "イク"]):
                return "climax"
            elif any(word in line for word in ["やめて", "いや", "ダメ"]):
                return "beg"
            elif any(word in line for word in ["うええん", "泣", "ぐすっ"]):
                return "cry"
            elif any(word in line for word in ["ふふ", "くす", "クスクス"]):
                return "mocking"
            return "neutral"

        emotion = tag_emotion(text)
        metadata_lines.append(f"{wav_path.name}|{text}|{emotion}")

    # Save metadata.csv
    metadata_path = char_output / "metadata.csv"
    with open(metadata_path, "w", encoding="utf-8") as f:
        f.write("\n".join(metadata_lines))

print("✅ Transcription and tagging complete.")