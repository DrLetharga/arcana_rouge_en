## 🧠 Purpose & Tagging Guide

This guide leverages reconstructed sprite context to assign metadata tags for voice model training. It uses `[vo_*]` macros and surrounding sprite configuration to infer emotional tone. These tags support automatic emotional labeling, line filtering for erotic vs neutral content, and the creation of specialized TTS variants such as clean or climax-focused models.

---

## 🎙️ Voice Macro Mapping

Voice playback is handled in `.ks` scripts using macros like:

```
[vo_aka s="akane_0001"]
```

- `vo_aka` refers to the character (e.g., Akane)
- `s="..."` specifies the audio filename (without extension)
- Always tied to the line of dialogue that immediately follows



These macros are always tied to the line of dialogue that immediately follows them, making them critical anchors for associating spoken lines with specific sprite and emotional configurations.

### 📁 Folder Mapping

**🔗 Voice File Archive:**  
All `.ogg` voice files referenced by `[vo_*]` macros are located in a single flat directory (`source/s_voice`) without subfolders.  
The complete archive is available here:  
`https://mega.nz/folder/KUNgyC6S#TJ5Ea3zYOkpU2l486i02Bw`


| Macro    | Character | Folder           | Example Filename |
| -------- | --------- | ---------------- | ---------------- |
| `vo_aka` | Akane     | `source/s_voice` | `akane_0001.ogg` |
| `vo_aoi` | Aoi       | `source/s_voice` | `aoi_0001.ogg`   |
| `vo_mia` | Mia       | `source/s_voice` | `mia_0001.ogg`   |
| `vo_mei` | Mei       | `source/s_voice` | `mei_0001.ogg`   |

---

### 📊 Inference Inputs

Tags like `{emote:pleasure}`, `{emote:fear}`, `{emote:cry}`, `{emote:broken}` are inferred from:

- **Face ID** (see 📌 Face ID Definitions)
- **Blush**: `ho`, `hoho` → heightened arousal or embarrassment
- **Semen flag**: `eki` → ejaculation, usually higher intensity
- **Pose**: `p2`, `p3` → more dramatic
- **Overlay presence**: `seieki_add`, `hands`, `ribbons`
- **Character-specific context** (e.g., Mei's `f14` = smirk, Aoi’s `f14` = tearful)

---

### 🎯 Tagging Outcome Example

**Macro Input:**

```
[std_mei m mad p1 f12 eki ho ce]
[vo_mei s="mei_0153"]
「やっ……そんな、奥まで……」
```

**Inferred Sprite State:**

- Face ID 12 = Agony
- Blush present (`ho`)
- Semen present (`eki`)
- Mei-specific context: overwhelmed, pained arousal

**Recommended Tag:**

```
[vo_mei s="mei_0153" metadata="{emote:cry}{emote:pleasure}{emote:forced_moan}"]
```

---

## 💡 Training Alignment

Tagging lines with emotional metadata allows for:

- Automatic emotional label creation for TTS training
- Filtering or separating erotic content from neutral speech
- Creating voice model variants (e.g., clean vs climax)

---

## 🔇 {tts\:skip} Tag Usage

### ❌ Common {tts\:skip} Candidates

- Pure SFX lines: `*pant*`, `*slurp*`, `*gulp*`
- Gagged/muffled moans: `「んぐっ……」`
- Simultaneous exclamations: `「「「ぎゃあぁあぁああああああああああぁあぁぁッ！！」」」`
- Voiceless reactions or distorted speech

### ✅ Usage Example

```
[vo_mei s="mei_0042" metadata="{tts:skip}"]
「んぶぅっ、んっ……っ」
```

Prevents Whisper or TTS from modeling a non-verbal expressive line.

---

## 💡 Combined Tagging

Tags may be combined for hybrid review and filtering purposes:

These tags allow for:

- Automatic emotional label creation for training TTS
- Filtering or separating erotic content from neutral speech
- Creating variants (e.g., clean model vs climax model)

```
[vo_aka s="akane_0349" metadata="{tts:skip}{emote:pleasure}"]
```

- Excluded from training, but keeps emotional context intact

---

## 🔖 Extended Metadata Support

In addition to `{tts:skip}`, the following fields are supported:

- `{lang:en}` / `{lang:fr}` / `{lang:zh}`: Tags for foreign language usage
- `{emote:*}`: Emotion inference from sprite states and voice tone

You may extend this with additional metadata fields such as `{tts:skip}` for non-verbal sounds or `{lang:}` for foreign phrases (see project glossary).

> See project glossary for full list.

---

## 🧪 Voice Tagging + Sprite Example

```
[std_aka m mad p1 f12 ho ce]
[vo_aka s="akane_0123"]
「Don’t look at me like that…!」
```

→ Load Akane’s damaged outfit, pose 1, face ID 12 with blush→ Play `akane_0123.ogg`→ Associate with `{emote:cry}{emote:fear}` or similar

---

## 📚 Sprite Macro Resolution Overview

This guide explains how macro calls in `.ks` script files resolve to character sprite image assets across different character folders. It maps macro arguments to filenames, describes how overlays and effects are layered, and ensures proper visual context when rendering dialogue scenes.
