## 🎭 Contextual Emotion Guide

This guide explains how to determine emotional tone using surrounding **visual**, **audio**, and **narrative** context. It supports consistent use of `{emote:*}`, `{intent:*}`, `{tts:*}`, and `{fx}` tags based on what’s happening in each scene.

---

### 🔍 What is Contextual Emotion?
Tagging isn't just about what is said — it's about **how** it is said, **what is shown**, and **what sounds** are present. Consider:

- Sprite face ID and overlays
- Event CG panning and focus
- Background sounds (`[se]` and `[bgv_*]`)
- Voice delivery in `.ogg` files
- Prior and next lines

---

### 🧪 Sample Walkthrough: `ev46b` (from `arcana001.ks`)

```ks
[se storage="&sf.SE挿入_触手"]
[evcg白フラ storage="ev46b" y=-100]
[fc]
[vo_aka s="akane_0004"]
[【茜】]
「ぎっ！？　あっ！　あぎぃぃぃいいっ！！　いっ、痛い痛い痛いッ！」[pcms]
```

#### 🔬 Context Breakdown
- CG Macro: `[evcg白フラ storage="ev46b"]` represents the initial penetrative moment with a bright flash
- Sound Macro: `se="&sf.SE挿入_触手"` signals tentacle insertion
- Voice Macro: `[vo_aka s="akane_0004"]` corresponds to `akane_0004.ogg`, featuring screaming and repeated cries of pain
- Dialogue includes direct references to pain and intense distress
- Occurs early in the emotional arc, before any signs of submission or climax

#### ✅ Tag Result
```ks
[vo_aka s="akane_0004" metadata="{emote:fear}{emote:cry}"]
```

---

### 🧪 Sample Walkthrough: `ev46f` (from `arcana001.ks`)

```ks
[evcg射精フラ storage="ev46f" y=-100 se="&sf.SE射精_外_人外_長"]
[fc]
[vo_aka s="akane_0019"]
[【茜】]
「ひっ……あ、あああぁぁああぁぁぁああぁあぁ～～～！！！」[pcms]
```

#### 🔬 Context Breakdown
- CG Macro: `[evcg射精フラ storage="ev46f"]` shows the climax moment with external monster ejaculation
- Sound Macro: `se="&sf.SE射精_外_人外_長"` signifies extended ejaculation SFX
- Voice Macro: `[vo_aka s="akane_0019"]` plays a scream-like vocalization, `akane_0019.ogg`
- Line is fully nonverbal, delivered with rising intensity and no structured speech
- Preceding context includes pained and fearful buildup (e.g., `akane_0195`)
- This is the scene’s emotional and physical apex

#### ✅ Tag Result
```ks
[vo_aka s="akane_0019" metadata="{emote:climax}{emote:cry}{emote:broken}{fx}"]
```

---

### 📈 Escalation Patterns (Emotion Arcs)
Lines may intensify over time. Common arcs include:

- `{emote:cry}` → `{emote:broken}` → `{emote:climax}`
- `{emote:fear}` → `{emote:beg}` → `{emote:apologetic}`
- `{emote:pleasure}` → `{emote:climax}`

Use prior lines and CG/sprite states to map the current point in the emotional curve.

---

### 🤫 Moan-Only and Silent Lines

Lines with no words (e.g., `「んっ……」`, `「はぅっ……」`) or SFX-only `.ogg`:

- Use `{fx}` if the sound is non-verbal but expressive
- Use `{tts:skip}` if unusable for clean speech training

---

### 🧠 Voice Metadata Recommendations
If `.ogg` is available for Akane, Aoi, Mia, or Mei:

- Always prefer audio-informed tagging
- If the line lacks speech but audio shows distress → use `{emote:cry}`, `{emote:fear}`, etc.
- If audio is not available, leave `{emote:*}` conservative and mark for review

---

This document is intended to supplement tagging decisions across scenes, especially those involving Event CGs, sprite layering, and emotional progression.

