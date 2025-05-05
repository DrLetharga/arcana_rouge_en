import librosa
import numpy as np
import json

def analyze_segments(transcript_path, wav_path, output_path=None):
    with open(transcript_path, "r", encoding="utf-8") as f:
        segments = json.load(f)

    y, sr = librosa.load(wav_path, sr=None)

    for seg in segments:
        if seg.get("emotion") == "{tts:skip}" or not seg["text"].strip():
            continue

        start_sample = int(float(seg["start"]) * sr)
        end_sample = int(float(seg["end"]) * sr)
        segment_audio = y[start_sample:end_sample]

        duration = float(seg["end"]) - float(seg["start"])
        seg["duration_sec"] = round(duration, 2)

        # Pitch analysis
        try:
            pitches = librosa.yin(segment_audio, fmin=70, fmax=400, sr=sr)
            pitches = pitches[np.isfinite(pitches)]
            if len(pitches) > 0:
                seg["mean_pitch_hz"] = round(np.mean(pitches), 2)
                seg["pitch_stddev"] = round(np.std(pitches), 2)
            else:
                seg["mean_pitch_hz"] = None
                seg["pitch_stddev"] = None
        except Exception:
            seg["mean_pitch_hz"] = None
            seg["pitch_stddev"] = None

        # Word pacing
        words = seg.get("words", [])
        if words:
            seg["word_count"] = len(words)
            seg["words_per_sec"] = round(len(words) / duration, 2) if duration > 0 else 0
        else:
            wc = len(seg["text"].split())
            seg["word_count"] = wc
            seg["words_per_sec"] = round(wc / duration, 2) if duration > 0 else 0

    if output_path:
        with open(output_path, "w", encoding="utf-8") as f:
            json.dump(segments, f, ensure_ascii=False, indent=2)
        print(f"[*] Analysis saved to {output_path}")
    return segments