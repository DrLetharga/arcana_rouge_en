import json
import pandas as pd
from pathlib import Path

def validate_transcript(json_path, log_path=None):
    with open(json_path, "r", encoding="utf-8") as f:
        segments = json.load(f)

    df = pd.DataFrame(segments)
    required_fields = [
        "segment_id", "start", "end", "text", "emotion", "emotion_confidence",
        "quality_score", "intent", "lang", "segment_type"
    ]

    lines = []

    def log(msg):
        print(msg)
        lines.append(str(msg))

    missing_cols = [col for col in required_fields if col not in df.columns]
    if missing_cols:
        log(f"[!] Missing required fields: {missing_cols}")
    else:
        log("[✓] All required metadata fields are present.")

    log("\n--- Segment Type Counts ---")
    log(df["segment_type"].value_counts().to_string())

    log("\n--- Intent Distribution ---")
    log(df["intent"].value_counts().to_string())

    log("\n--- Emotion Tags ---")
    log(df["emotion"].value_counts().to_string())

    log("\n--- Language Breakdown ---")
    log(df["lang"].value_counts().to_string())

    if log_path:
        with open(log_path, "w", encoding="utf-8") as log_file:
            log_file.write("\n".join(lines))