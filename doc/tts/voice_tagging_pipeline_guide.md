# 🗣️ TTS Voice Tagging Pipeline Guide

This guide outlines requirements for tagging `.ogg` voice files used in `.ks` scripts for TTS training and emotional alignment.

## ✅ Required Behavior in Automation Scripts

- All lines using `[vo_aka]`, `[vo_aoi]`, `[vo_mia]`, or `[vo_mei]` **must be verified against the corresponding `.ogg` file**
- Emotional metadata should be inferred from vocal tone, pacing, and delivery
- If audio file is not available, the script must:
  - Warn the user
  - Optionally tag the line with `{needs_audio}`
  - Mark emotional tagging as uncertain or skipped

## 🧪 JSON Output Example

```json
{
  "line": "mei_0066",
  "text": "Ahh... It's going inside...",
  "tags": ["climax", "pleasure"],
  "voice_file": "mei_0066.ogg",
  "voice_present": true,
  "warnings": []
}
```

If voice file is missing:

```json
{
  "line": "aoi_0042",
  "text": "Stop—!",
  "tags": [],
  "voice_file": "aoi_0042.ogg",
  "voice_present": false,
  "warnings": ["Voice file not found — tagging may be incomplete"]
}
```

## 📁 Voice Archive

All `.ogg` files are located here:
https://mega.nz/folder/iI9ilBqK#WNN25I2hK_dvC3NilJOk0g

