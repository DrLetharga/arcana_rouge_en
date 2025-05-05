import json
import pandas as pd
from pathlib import Path
from whisper_extra.audio_analysis import analyze_segments
from whisper_extra.cleanup_short_segments import cleanup_short_or_garbled_segments
from whisper_extra.emotion_reclassifier import EmotionReclassifier
from whisper_extra.validation import validate_transcript

INPUT_FILE = Path("tts/tts_prepped/drama_onnx/Akane_NurseDiary_converted.wav")
json_out = INPUT_FILE.with_suffix(".json")

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
def enrich_metadata(row):
    text = row.get("text", "")
    row["intent"] = (
        "inner_monologue" if text.strip().startswith("（") or text.strip().startswith("(")
        else "dialogue"
    )
    row["lang"] = (
        "en" if any(ord(c) < 128 for c in text) and text.lower() != text
        else "fr" if any(w in text.lower() for w in ["mon", "oui", "je", "s'il"])
        else "zh" if any("\u4e00" <= c <= "\u9fff" for c in text)
        else "ja"
    )
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