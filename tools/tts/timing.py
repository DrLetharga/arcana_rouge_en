from pydub import AudioSegment
import json

# Load audio file
audio = AudioSegment.from_wav("Akane_NurseDiary_converted.wav")
duration = len(audio) / 1000  # convert to seconds

# Load transcript
with open("drama_transcription.json", "r", encoding="utf-8") as f:
    segments = json.load(f)

max_end = max(float(seg["end"]) for seg in segments)

print(f"Audio length: {duration:.2f} sec")
print(f"Last segment ends at: {max_end:.2f} sec")
print(f"Difference: {abs(duration - max_end):.2f} sec")
