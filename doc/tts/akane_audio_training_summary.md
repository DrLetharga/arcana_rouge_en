# Using the Akane Audio Drama for TTS Training

The game includes a 21-minute, 53-second audio drama featuring a sexual encounter with Akane. This is a significant asset for training a voice model due to its rich emotional range and natural delivery.

---

## ✅ Why It’s Valuable

- Captures **extended emotional progression**
- Includes **crying, moaning, gasping, and climaxing**
- Provides **breath control**, **pacing**, and **tone shifts**
- High-quality, continuous **natural delivery** from the original seiyuu

---

## ✅ Usage Options

### 1. Unsupervised Voice Cloning
Use the full audio as a **reference embedding**:
- Great for models like YourTTS, Resemble-style encoders
- No transcription needed
- Extracts Akane’s *style and tone* for use in English synthesis

---

### 2. Whisper / WhisperX Auto-Transcription
- Use OpenAI’s Whisper or WhisperX to auto-transcribe the Japanese dialogue
- Segment the 21-minute file into smaller WAV files (e.g. 5–10 second clips)
- Result: usable data for training phoneme-rich emotional delivery

**Example metadata entry:**
```
akane_audio_012.wav|あっ……そこ……だめ、だめぇっ……
```

---

### 3. Manual English Translation Alignment (Advanced)
- Auto-segment with WhisperX for timestamps
- Manually translate each segment
- Create a **parallel training dataset**: Japanese audio → English text

Result: a dataset for emotion-aligned English generation in Akane’s voice

---

## 🧠 Summary Table

| Use Case                  | Action                                                                 |
|---------------------------|------------------------------------------------------------------------|
| Voiceprint training       | Use full audio to extract speaker embedding or match tone              |
| Supervised training       | Use Whisper to generate transcript → segment + match manually          |
| Parallel emotion training | Translate manually while keeping timestamps aligned                    |
| Unsupervised reference    | Use as raw input for style-matching TTS models (Tortoise, YourTTS, etc)|

---

## I Can Help You With:
- Whisper transcription and segmentation
- Auto-generating WAV clips and metadata.csv
- English translation alignment
- Coqui or Tacotron2 data formatting

---

## File Uploads
If you'd like to begin:
- Upload the `.wav` file (even large files like **442MB** are supported here)
- I will segment, transcribe, and prepare the data structure with or without translation