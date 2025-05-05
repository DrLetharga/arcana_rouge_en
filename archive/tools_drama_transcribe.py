import whisper
from pathlib import Path
import json

# Configuration
INPUT_FILE = Path("../source/Akane_NurseDiary_converted.wav")
OUTPUT_DIR = Path("../tts_prepped/drama")
MODEL_SIZE = "large"  # High quality for long, nuanced scene
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

# Load model
model = whisper.load_model(MODEL_SIZE)

# Transcribe the full audio file
result = model.transcribe(str(INPUT_FILE), language="ja", verbose=True, word_timestamps=True)

# Extract metadata
segments = result.get("segments", [])
metadata = []

for i, seg in enumerate(segments):
    start = seg['start']
    end = seg['end']
    text = seg['text'].strip()
    metadata.append({
        "segment_id": f"segment_{i+1:03}",
        "start": start,
        "end": end,
        "text": text
    })

# Save JSON transcription with timestamps
json_output = OUTPUT_DIR / "drama_transcription.json"
with open(json_output, "w", encoding="utf-8") as f:
    json.dump(metadata, f, ensure_ascii=False, indent=2)

print(f"✅ Drama transcription complete. {len(metadata)} segments saved to {json_output}")