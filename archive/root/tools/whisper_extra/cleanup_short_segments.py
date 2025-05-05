def cleanup_short_or_garbled_segments(df):
    import pandas as pd

    def should_skip(text):
        if not text or len(text.strip()) < 3:
            return True
        if all(c in "*!?…。、ー「」()[]{}<>\n\r\t " for c in text.strip()):
            return True
        if any(x in text.lower() for x in [
            "redo felt", "tremolo", "같아", "slegter", "behindcan"
        ]):
            return True
        return False

    df = df.copy()
    for i, row in df.iterrows():
        if should_skip(row["text"]):
            df.at[i, "text"] = ""
            df.at[i, "emotion"] = "{tts:skip}"
    return df