## 🎙️ Dialogue & Narration Translation Guide

This guide defines rules and best practices for translating **dialogue** and **narration** in `.ks` script files, specifically for visual novels using the KiriKiri engine. It supplements `translation.md` by focusing on player-visible text such as voiced lines, monologue, and descriptive narration, with full awareness of macros, tone, and emotional tagging.

---

### 🧭 Core Principles

- Always translate player-visible text inside `"..."` or `'...'` quotes
- Respect the emotional tone of the original scene (overwhelmed, fearful, broken, etc.)
- Avoid over-literal translation — capture **intent** and **tone**, not word-for-word structure
- Tag emotional state and purpose using `metadata={}` where applicable
- Retain and honor formatting tags such as `[l]`, `[r]`, `[wait]`, etc.

---

## 👧 Character Dialogue

### 🔹 Format

Most dialogue lines are preceded by **dialogue-adjacent macros**, which are not part of the spoken line itself but help set up UI, voice, and speaker metadata. These include:

- `[fc]` – resets the UI for a new line
- `[vo_*]` – plays a voice clip
- `[【Name】]` – displays the speaker name
- `[pcms]` – marks the end of the dialogue line
- `[nor]` – signals continuation into the next line, commonly used in narration but can appear in any type of line

These macros are typically stacked directly before and after a spoken line.

Example:

```ks
[fc]
[vo_aka s="akane_0001"] 
[【赤音】 off]
「あっ、だめっ……！」[pcms]
```

- Retain all macro structure
- Translate Japanese text within `「...」`
- Match tone and speech style to the character’s profile from `character.md`

### 🔹 Tone Guidelines

- Girls should sound **emotionally inexperienced**, **naive**, **vulnerable**, or **submissive** when appropriate
- Protagonist should sound neutral, confident, or aggressive depending on narration context
- Do not use infantilizing language (e.g., "little girl") even if the Japanese uses coded terms like `未開発`
- Avoid awkward literal translations; use erotic or natural phrasing appropriate to context

✅ Good:

```text
"No... don’t look... it’s embarrassing...!"
```

❌ Bad:

```text
"No... don’t see... it is shameful...!"
```

---

## 🧠 Inner Monologue

Inner monologue lines represent a character's thoughts and are always enclosed in full-width parentheses: `（...）`. They always include a speaker name and follow the same macro structure as spoken dialogue, including `[fc]`, `[vo_*]`, `[【Name】]`, and `[pcms]`.

- Only apply `{intent:inner_monologue}` to lines explicitly enclosed in full-width parentheses `（...）`
- Spoken lines with standard quotes `「...」` are never monologue, regardless of delivery or off-screen notation
- Format the same way as spoken lines, but note the use of `（...）` instead of `「...」`
- Tag these lines using `metadata="{intent:inner_monologue}"`
- Preserve emotional tone and internal conflict when translating

Example:

```ks
[fc]
[vo_aka s="akane_0004" metadata="{intent:inner_monologue}{emote:shame}"]
[【赤音】 off]
（Why... why does it feel like this... even though I hate it...!）[pcms]
```

---

## 📖 Narration

Narration lines are third-person descriptive text that are **never voiced** and **never attributed to a speaker**. They may be bracketed by formatting macros like `[fc]` and `[pcms]`, but must **not** include `[vo_*]` or `[【Name】]` macros.

- Not enclosed in `「...」` or `（...）`
- No `[vo_*]` macro should appear before narration
- Do not include a speaker name — narration is external to all characters
- Maintain immersive tone and flow — do not translate overly literally
- When sensitive terms are present (e.g., `未開発`, `教え子`), paraphrase and log them in the `notes=` column

✅ Correct:

```ks
[fc]
She squirmed, her small frame unable to resist the pulsing sensation.[pcms]
```

📎 Notes: Term `未開発` was paraphrased to "small frame" for policy compliance

---

## 🖼️ Visual Context Influence (CGs & Sprites)

Dialogue should always be interpreted in the **visual context** of the scene. Event CGs and sprite macro states can strongly affect tone, emotional nuance, and tagging decisions.

> ⚠️ **Note for automation and AI usage**:
> If visual (`[evcg]`, `[std_*]`) or audio (`[vo_*]`, `se=`) context is not available during processing, the system should warn the user and recommend providing the corresponding CG, sprite state, or voice line.
> Emotional tagging and translation may be incomplete or imprecise without this context.
>
> 🎞️ Event CGs: https://mega.nz/folder/KUNgyC6S#TJ5Ea3zYOkpU2l486i02Bw  
> 👗 Sprites: https://mega.nz/folder/SA0ShbqY#4Ue-x1-rABJIyZbI8G7s-w  
> 🎙️ Voice: https://mega.nz/folder/iI9ilBqK#WNN25I2hK_dvC3NilJOk0g  
> 🏞️ Backgrounds: https://mega.nz/folder/rUsR2KCQ#aCBRSZidLXSzW3EiU0qJTw

### 🔹 When Sprites Are Active

Check surrounding `[std_*]` macros for:

- **Face ID**: e.g., `f12` = Agony → `{emote:cry}{emote:broken}`
- **Blush**: `ho` or `hoho` → `{emote:shame}` or `{emote:pleasure}`
- **Semen flags (`eki`)** → May imply `{emote:climax}`, `{tts:skip}`
- **Pose or Overlay** (hands, tears, ribbons) → Indicates powerlessness, restraint, distress

These help disambiguate emotionally neutral lines and provide essential tagging cues.

### 🔸 When Event CGs Are Active

Review `[evcg]`, `[evcg射精フラ]`, `[trans_c]`, and `[se]` macro usage near the line:

- **CG frame name** (e.g., `ev08d`) suggests specific characters and positions
- **Y-offset (`y=`)** often reflects panning/focus shifts
- **Sound (`se=`)** indicates climax, penetration, or emotional spike
- **TV filter (`tv`)** may suggest narrative distance or surveillance (`{tvview}`)

### 📌 Example:

```ks
[evcg storage="ev12d" se="&sf.SE射精_中_人外_長"]
[vo_mei s="mei_0066"]
「Ahh! It’s... going inside...!」
```

Suggested tags:
```ks
[vo_mei s="mei_0066" metadata="{emote:climax}{emote:pleasure}{sound:ejaculation:internal:monster}"]
```

### 🔍 Translation Tone Guidance

- A distressed face, TV filter, or `evcg赤フラ` macro should guide you toward a **fearful, overwhelmed, or broken** tone.
- A sprite with laughing expression and hands overlay might justify a **mocking** or **taunting** tone even for short phrases.
- Tagging should reflect not just the words, but **how the character feels in that visual moment**.

## ➕ `[nor]` Macro Usage

The `[nor]` macro signals that the current line continues onto the next line. It is most commonly used in narration but can also appear in dialogue when a sentence breaks across multiple display lines.

### 🔸 Dialogue Example
```ks
[fc]
[vo_aka s="akane_0494"]
[【茜】]
「なっ、冥魔！？　結界も張っていないのに、どうして[nor]
……？」[pcms]
```

### 🔸 Narration Example
```ks
[fc]
まだあどけなさの残る少女達の体には、ヒトの臓物にも似た赤黒い触手が絡みつき、宙へと掲げ上げている。[nor]
少女達はまるで、磔刑される聖人のようだ。[pcms]
```

Use `[nor]` when the continuation of a sentence or thought spans multiple lines, but do **not** use it on the final line of the segment.

## 🏷️ Tagging for TTS and Metadata

Use `metadata=` attributes inside voice macros to reflect:

- Non-verbal sounds:
  - `{fx}` — Non-verbal sounds only (moan, gasp, etc.)

- Emotional tone:
  - `{emote:neutral}` — Emotionless or blank
  - `{emote:happy}` — Cheerful or lighthearted
  - `{emote:fear}` — Panic, terror, or helplessness
  - `{emote:cry}` — Crying or sobbing
  - `{emote:broken}` — Mind-broken or emotionally numb
  - `{emote:pleasure}` — Moaning with arousal but no climax
  - `{emote:climax}` — Orgasmic or peak arousal
  - `{emote:mocking}` — Teasing or condescending
  - `{emote:shame}` — Flustered or embarrassed
  - `{emote:beg}` — Pleading, submissive
  - `{emote:apologetic}` — Guilt or whimpering apologies
  - `{emote:forced_moan}` — Moaning under duress
  - `{emote:anger}` — Furious or aggressive
  - `{emote:sad}` — Sorrowful or despondent
  - `{emote:surprise}` — Shocked or startled
  - `{emote:confused}` — Hesitant or unsure
  - `{emote:anxious}` — Nervous or panicked
  - `{emote:laugh}` — Laughing or amused
  - `{emote:serious}` — Cold, steady, or resolved

- Intent:
  - `{intent:inner_monologue}` — Internal thoughts
  - `{intent:narration}` — Protagonist narration
  
- Language:
  - `{lang:ja}` — Japanese
  - `{lang:en}` — English

- Skip line from training:
  - `{tts:skip}` — Line excluded from TTS model training

Example:

```ks
[vo_aoi s="aoi_0021" metadata="{emote:broken}{intent:inner_monologue}{lang:ja}"]
「It hurts... I don’t want this...!」
```

Use `metadata=` attributes inside voice macros to reflect:

- Emotional tone: `{emote:fear}`, `{emote:cry}`, `{emote:mocking}`
- Intent: `{intent:inner_monologue}`, `{intent:narration}`
- Language: `{lang:ja}`, `{lang:en}`
- Skip line from training: `{tts:skip}`

Example:

```ks
[vo_aoi s="aoi_0021" metadata="{emote:broken}{intent:inner_monologue}{lang:ja}"]
「It hurts... I don’t want this...!」
```

---

## 🔍 Reference Index

- 🖼️ `evcg.md` – Event CG macro usage, transitions, and emotional inference
- 👗 `std_sprite.md` – Sprite macros, face ID mapping, overlays, and emotion tagging
- 📘 `styleguide.md` – Grammar, tone, and slang usage
- 🧠 `tts_emotions.json` – Approved emotional tags
- 👩 `character.md` – Character tone and model metadata
- 🧪 `workflow.md` – Batch processing, tagging steps
- 🏷️ `tagging_guide.md` – Complete reference for emote, intent, language, and training tags – Event CG macro usage, transitions, and emotional inference

---

## ✅ Checklist for Dialogue Lines

- [ ] Voice file assessed for spoken lines by Akane, Aoi, Mia, or Mei
  - Emotional tone should be based on vocal delivery in `.ogg` file if available
  - If file is not available during automation, system must issue a warning to the user
  - Archive: https://mega.nz/folder/iI9ilBqK#WNN25I2hK_dvC3NilJOk0g

- [ ] Visual or audio context was available (CG, sprite, sound effect, or voice clip)
  - If line is spoken by Akane, Aoi, Mia, or Mei, the corresponding `.ogg` file should be provided and assessed for emotional tone and vocal delivery
  - If context is missing, translator or system must warn that emotional accuracy may be incomplete
  - Recommended sources:
    - 🎞️ Event CGs: https://mega.nz/folder/KUNgyC6S#TJ5Ea3zYOkpU2l486i02Bw
    - 👗 Sprites: https://mega.nz/folder/SA0ShbqY#4Ue-x1-rABJIyZbI8G7s-w
    - 🎙️ Voice: https://mega.nz/folder/iI9ilBqK#WNN25I2hK_dvC3NilJOk0g
    - 🏞️ Backgrounds: https://mega.nz/folder/rUsR2KCQ#aCBRSZidLXSzW3EiU0qJTw

---

This document is continuously updated to reflect evolving project standards and tone precision. All dialogue should be checked for consistency with voice, macro usage, and emotional context. to reflect evolving project standards and tone precision. All dialogue should be checked for consistency with voice, macro usage, and emotional context.

