import json
import pandas as pd
from pathlib import Path

def validate_transcript(json_path):
    with open(json_path, "r", encoding="utf-8") as f:
        segments = json.load(f)

    df = pd.DataFrame(segments)
    required_fields = [
        "segment_id", "start", "end", "text", "emotion", "emotion_confidence",
        "quality_score", "intent", "lang", "segment_type"
    ]

    missing_cols = [col for col in required_fields if col not in df.columns]
    if missing_cols:
        print(f"[!] Missing required fields: {missing_cols}")
    else:
        print("[✓] All required metadata fields are present.")

    print("\n--- Segment Type Counts ---")
    print(df["segment_type"].value_counts())

    print("\n--- Intent Distribution ---")
    print(df["intent"].value_counts())

    print("\n--- Emotion Tags ---")
    print(df["emotion"].value_counts())

    print("\n--- Language Breakdown ---")
    print(df["lang"].value_counts())

    return df

if __name__ == "__main__":
    path = Path("tts/tts_prepped/drama_onnx/drama_transcription_complete.json")
    validate_transcript(path)