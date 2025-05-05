## 🏷️ Tagging Guide

This guide defines and explains all recognized tags used in `metadata={...}` fields for voiced lines. Tags affect TTS training, emotional accuracy, translation tone, and review pipelines.

---

### 🎭 `{emote:*}` — Emotional State Tags

| Tag               | Meaning                                      |
|------------------|----------------------------------------------|
| `neutral`        | Emotionally flat or blank                    |
| `happy`          | Cheerful or lighthearted                     |
| `fear`           | Panic, terror, or helplessness               |
| `cry`            | Crying or sobbing                           |
| `broken`         | Mind-broken or emotionally numb              |
| `pleasure`       | Moaning with arousal but no climax           |
| `climax`         | Orgasmic or peak arousal                     |
| `mocking`        | Teasing or condescending                     |
| `shame`          | Flustered or embarrassed                     |
| `beg`            | Pleading, submissive                        |
| `apologetic`     | Guilt or whimpering apologies                |
| `forced_moan`    | Moaning under duress                         |
| `anger`          | Furious or aggressive                        |
| `sad`            | Sorrowful or despondent                      |
| `surprise`       | Shocked or startled                          |
| `confused`       | Hesitant or unsure                           |
| `anxious`        | Nervous or panicked                          |
| `laugh`          | Laughing or amused                           |
| `serious`        | Cold, steady, or resolved                    |

---

### 🧠 `{intent:*}` — Intent of the Line

| Tag                 | Meaning                        |
|---------------------|--------------------------------|
| `inner_monologue`   | Internal thoughts              |
| `narration`         | Protagonist narration          |

---

### 🌍 `{lang:*}` — Language Override

| Tag   | Use                   |
|--------|------------------------|
| `ja`   | Japanese (original)    |
| `en`   | English (translated)   |

---

### 🚫 `{tts:*}` — TTS Training Flags

| Tag   | Use                                                       |
|--------|------------------------------------------------------------|
| `skip` | Exclude from training due to distortion, silence, or irrelevance |

---

### 🎧 `{fx}` — Non-Verbal Sound Flag

| Tag | Use                                                              |
|------|------------------------------------------------------------------|
| `fx` | Tag for lines containing only non-verbal audio (moan, gasp, etc.) |

---

### 🧪 Metadata Format Example

```ks
[vo_mei s="mei_0023" metadata="{emote:pleasure}{intent:inner_monologue}{lang:ja}"]
（Nn... why does it feel so good...?）[pcms]
```

This line tags emotional tone, intent, and original language for downstream use.

---

### 🧠 Contextual Tagging Protocol (Extended)

When assigning emotion or intent metadata for a voiced line:

- Always review:
  - **All macros prior to the line**, including:
    - `[evcg]`, `[bgv_*]`, `[se]`, `[move]`, `[trans_c]`
  - **Any developer comments** on the preceding and current lines
  - **Character macro history**, especially earlier voiced lines and `[bgv_*]` transitions
  - **Visual flow** (e.g., CG panning `y=` or sprite facial expressions from `[std_*]`)
- If `[bgv_*]` or `[se loop]` is active **before the line**, assume the emotional state is already escalated or sustained
- The presence of `[bgv_*]` implies:
  - Involuntary or background vocalization from the character
  - Escalation into a “looped” emotional state like `{emote:forced_moan}`, `{emote:climax}`, or `{emote:cry}`
  - `{tts:skip}` for background loops and sometimes for context-dominated gasping lines
- If a CG macro changes (`[evcg ...]`), examine:
  - Which characters are in focus (based on `y=`, `x=`, or filename)
  - Whether the transition is sharp (e.g., `trans_c time=0`) or gradual
- Every voiced line should be interpreted in **surrounding emotional and audio context**, not in isolation

---

This file is maintained alongside `tts_emotions.json` to ensure consistency and compatibility with all automated tools.

