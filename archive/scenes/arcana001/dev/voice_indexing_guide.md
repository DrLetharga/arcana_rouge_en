# 📘 Visual Novel Voice Indexing & Contextual Tagging Guide

This document outlines the structure and tagging standards used in `voice_indexXXX.csv` and related indexing files for localizing Japanese visual novels with emotion-aware TTS metadata.

---
### 📋 Table of Contents

- [🌟 Purpose](#🌟%20purpose)
- [🧹 File Structure Overview](#🧹%20file%20structure%20overview)
- [🧬 Type Definitions](#🧬%20type%20definitions)
- [🏷️ Metadata Tag Examples](#🏷️%20metadata%20tag%20examples)
- [🔍 Voice Macro and Dialogue Pairing](#🔍%20voice%20macro%20and%20dialogue%20pairing)
- [📝 Translation and Compliance](#📝%20translation%20and%20compliance)
- [📦 Example BGM Entry](#📦%20example%20bgm%20entry%20%28from%20bgm_index.csv%29)
- [🧠 Special Case: CG + Effect on Same Line](#🧠%20special%20case%20cg%20%20effect%20on%20same%20line)
- [🧾 Inference Rules for Key Fields](#🧾%20inference%20rules%20for%20key%20fields)
  - [👧 Character Inference](#🧾%20inference%20rules%20for%20key%20fields#👧%20character%20inference)
  - [📁 File ID Inference](#🧾%20inference%20rules%20for%20key%20fields#📁%20file%20id%20inference)
  - [🔗 Voice Index Inference](#🧾%20inference%20rules%20for%20key%20fields#🔗%20voice%20index%20inference)
  - [🏷️ Label Inference](#🧾%20inference%20rules%20for%20key%20fields#🏷️%20label%20inference)
  - [🏷️ Metadata Tags Inference](#🧾%20inference%20rules%20for%20key%20fields#🏷️%20metadata%20tags%20inference)
  - [🎭 Sprite-Based Emotion Inference](#🧾%20inference%20rules%20for%20key%20fields#🎭%20sprite-based%20emotion%20inference)
  - [📝 Notes Inference](#🧾%20inference%20rules%20for%20key%20fields#📝%20notes%20inference)
- [🚫 Common Inference Mistakes](#🚫%20common%20inference%20mistakes)
- [✅ Final Notes](#✅%20final%20notes)
- [📚 Related Documentation](#📚%20related%20documentation)
- [📋 Document Metadata](#📋%20document%20metadata)

---

## 🌟 Purpose

To provide consistent, richly contextualized annotations for every meaningful line in `.ks` script files—especially those with voice macros, player-facing dialogue, narration, sound effects, and emotional triggers.

---

## 🧹 File Structure Overview

Each row in `voice_indexXXX.csv` corresponds to a single line of significance in a `.ks` script file. It includes the following key columns:

| Column           | Purpose                                                                                                                                                      |
| ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `Index`          | The exact line number from the `.ks` file                                                                                                                    |
| `Type`           | Classification of the line (see Type Definitions below)                                                                                                      |
| `Label`          | Current label section from the `.ks` file (e.g., `*scene_start`)                                                                                             |
| `Macro`          | The macro used (e.g., `vo_aka`, `bgv_aka`, `se`, `move`). For Type `Dialogue`, the speaker is indicated by a name macro (e.g., `【茜】`) on the preceding line. |
| `File ID`        | Filename or asset referenced (e.g., `bgm05`, `akane_0002`)                                                                                                   |
| `Character`      | Speaking or affected character, if applicable                                                                                                                |
| `Voice Index`    | Line number of a preceding `vo_*` macro that matches this dialogue line                                                                                      |
| `Japanese Line`  | Raw Japanese text from the `.ks` file                                                                                                                        |
| `English Line`   | Translated version of the Japanese line                                                                                                                      |
| `Metadata Tags`  | Emotion, tone, intent, and skip tags used for TTS training                                                                                                   |
| `Words`          | Placeholder for word-level transcription from Whisper                                                                                                        |
| `Notes`          | Summary of visual/sound context or scene interpretation                                                                                                      |
| `Explicit Notes` | Translation safety or policy compliance commentary                                                                                                           |

---

## 🧬 `Type` Definitions

| Type        | Description                                                                                                                |
| ----------- | -------------------------------------------------------------------------------------------------------------------------- |
| `Label`     | A navigation anchor (e.g., `*scene_start`)                                                                                 |
| `Dialogue`  | Spoken lines inside `「...」`                                                                                                |
| `Name`      | A character name macro that identifies the speaker of the next dialogue line (e.g., `【茜】`)                                 |
| `Voice`     | Voice macro call, e.g., `[vo_aka s="..."]`                                                                                 |
| `SE`        | Sound effect macros, e.g., `[se buf=1 storage="..."]`                                                                      |
| `BGM`       | Background music, e.g., `[bgm storage="bgm005"]`                                                                           |
| `BGV`       | Background voice loops, e.g., `[bgv_aka to01]`                                                                             |
| `Narration` | Protagonist or descriptive narration outside of dialogue quotes                                                            |
| `Comment`   | Developer comments starting with `;`                                                                                       |
| `Effect`    | Visual screen commands like `[move]`, `[trans_c]`, or other screen/image effects such as flashes, fades, and camera shakes |
| `CG`        | Event CG-specific image macros (e.g., `[evcg ev46a]`)                                                                      |

---

### Example (from `evcg.md`):

```ks
[evcg射精フラ storage="ev46f"]
```

- Type: `CG`
- Macro: `evcg射精フラ`
- File ID: `ev46f`
- Description: Loads an event CG with an ejaculation flash, typically signaling climax

---

## 🏷️ Metadata Tag Examples

Tags may come from contextual emotion, audio delivery, scene structure, or tagging policies defined in `workflow.md` and `tagging_guide.md`.

- Use `{tts:skip}` when the line is not suitable for clean training, such as slurps, gags, FX-heavy delivery, or multi-speaker overlap.
- Add `{fx}` when the voice line is expressive but non-verbal (e.g., sobs, gasps).
- Segment-specific tags such as `{segment_type:fx_only}` may be layered later during Whisper injection.
- If tagging requires a policy-safe substitution or euphemism, note the reason in `Explicit Notes` and apply `{risk:*}` if defined in your `styleguide.md`.

| Tag                        | Meaning                                     |
| -------------------------- | ------------------------------------------- |
| `{emote:fear}`             | Character sounds afraid                     |
| `{emote:beg}`              | Character is pleading                       |
| `{emote:forced_moan}`      | Involuntary moaning without clear speech    |
| `{intent:spoken}`          | Clear spoken dialogue                       |
| `{intent:inner_monologue}` | Internal monologue thought voice            |
| `{tts:skip}`               | Not suitable for training due to FX/gagging |
| `{lang:ja}`                | Original Japanese line                      |
| `{tone:ominous}`           | BGM or scene has ritualistic or dark energy |
| `{bgm:looping}`            | The BGM is a looped ambient piece           |

---

## 🔍 Voice Macro and Dialogue Pairing

- If a `vo_*` macro immediately precedes a dialogue line, link them using `Voice Index`.
- In most scripts, a character name macro such as `【茜】` will appear **between** the `vo_*` macro and the dialogue. This name macro is used to assign the correct `Character` field.

### Example from arcana001.ks:

```ks
[vo_aka s="akane_0002"]
[【茜】]
「せ……先生……もう、やめにして……ね？」
```

| Index | Type     | Label | Macro  | File ID    | Character | Voice Index | Japanese Line         | English Line                           | Metadata Tags                       | Words | Notes                                                                                                              | Explicit Notes                                                    |
| ----- | -------- | ----- | ------ | ---------- | --------- | ----------- | --------------------- | -------------------------------------- | ----------------------------------- | ----- | ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------- |
| 88    | Voice    | *7    | vo_aka | akane_0002 | Akane     |             |                       |                                        |                                     |       |                                                                                                                    |                                                                   |
| 89    | Name     | *7    | 【茜】    |            | Akane     |             |                       |                                        |                                     |       |                                                                                                                    |                                                                   |
| 90    | Dialogue | *7    |        |            | Akane     | 88          | 「せ……先生……もう、やめにして……ね？」 | “D-Doctor… please stop already… okay?” | {emote:beg}{intent:spoken}{lang:ja} |       | Submissive, tired plea. No sobbing or FX overlay. Mid-scene escalation. Tentacle loop and all three girls moaning. | Uses 「先生」 (Sensei). Translated as 'Doctor' for policy compliance. |
- Line 88: Type = `Voice`, Macro = `vo_aka`, File ID = `akane_0002`, Character = Akane
- Line 89: Type = `Name`, Macro = `【茜】`, Character = Akane
- Line 90: Type = `Dialogue`, Voice Index = 88, Character = Akane  
  E.g., if Line 88 is `[vo_aka s="akane_0002"]` and Line 90 is `「せ……先生……もう、やめにして……ね？」`, then Line 90's `Voice Index` should be `88`.

- Dialogue enclosed in full-width parentheses `（...）` is considered internal monologue.

- These lines are always tagged `{intent:inner_monologue}` and typically use post-processed audio (e.g., softer, echoey) to distinguish inner thoughts from spoken dialogue.

### Example from arcana047.ks:

```ks
[vo_aka s="akane_0256"]
[【茜】]
（やだ、どんどん溶けてく……このままじゃ、大事なところまで見られちゃう！）
```

| Index | Type     | Label | Macro  | File ID    | Character | Voice Index | Japanese Line                         | English Line                                                                           | Metadata Tags                                              | Words | Notes                                                                                                                                                                                 | Explicit Notes |
| ----- | -------- | ----- | ------ | ---------- | --------- | ----------- | ------------------------------------- | -------------------------------------------------------------------------------------- | ---------------------------------------------------------- | ----- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- |
| 111   | Voice    | *2812 | vo_aka | akane_0256 | Akane     |             |                                       |                                                                                        |                                                            |       |                                                                                                                                                                                       |                |
| 112   | Name     | *2812 | 【茜】    |            | Akane     |             |                                       |                                                                                        |                                                            |       |                                                                                                                                                                                       |                |
| 113   | Dialogue | *2812 |        |            | Akane     | 111         | （やだ、どんどん溶けてく……このままじゃ、大事なところまで見られちゃう！） | (No, it's melting more and more... If this keeps up, he'll see everything down there!) | {intent:inner_monologue}{emote:fear}{emote:shame}{lang:ja} |       | Akane is upside down, restrained by Mizuchi's tentacles. A fluid is visibly melting her magical outfit. She is panicking internally about the imminent exposure of her private parts. |                |
- Line 111: Type = `Voice`, Macro = `vo_aka`, File ID = `akane_0256`, Character = Akane
- Line 112: Type = `Name`, Macro = `【茜】`, Character = Akane
- Line 113: Type = `Dialogue`, Voice Index = 111, Character = Akane, Metadata Tag includes `{intent:inner_monologue}`

---

## 📝 Translation and Compliance

- All narration, dialogue, and comments should be translated into natural English.
- Terms like `先生` must be flagged in `Explicit Notes` and translated as "Doctor".
- Do **not** use placeholders like `[TRANSLATED: ...]`. Always supply a real translation.
- Dialogue should respect tone: submissive, overwhelmed, emotionally naive unless otherwise stated.

---

## 📦 Example BGM Entry (from bgm_index.csv)

```csv
BGM File,Start Line,End Line,Looping,Duration (s),Tone Tags,Notes
BGM05.ogg,54,,True,88.6,{tone:ominous}{tone:tense},"Ambient, low-drone track used to create a ritualistic and oppressive atmosphere throughout EV46 scene."
```

---

## 🧠 Special Case: CG + Effect on Same Line

- If a `[trans_c]` or `[move]` macro appears on the same line as `[evcg]`, both should be logged as **separate rows**.

### Example (from arcana001.ks):

```ks
[evcg ev46a][trans_c time=500 effect=fade]
```

Would produce:

- Row 1: Type = `CG`, Macro = `evcg`, File ID = `ev46a`
- Row 2: Type = `Effect`, Macro = `trans_c`, File ID = `fade`

- Each will share the same `Index` (line number) from the `.ks` file.
- First row: Type = `CG` for `[evcg]`
- Second row: Type = `Effect` for `[trans_c]` or other visual commands

- This ensures both the visual content **and** the transition logic are preserved contextually.

---

## 👁️ Mandatory Context Collection Before Tagging a Line

Before assigning any emotion (`{emote:*}`) or intent (`{intent:*}`) tags, you **must** collect and document all relevant scene context. No tagging may proceed until this checklist is complete.

---

### 🔹 Mandatory Pre-Tagging Checklist

| Category | Required Action |
|:---|:---|
| **1. Current Visual Focus** | Identify the most recent `[evcg]`, `[bg]`, or `[video]` event prior to the voiced line.<br>• Record the storage filename (e.g., `ev46a`)<br>• Note any `x=`, `y=` attributes (camera focus or panning details) and explain which character or scene region is in visual focus. |
| **2. Current Active Sounds** | Identify all ambient or background sounds still active:<br>• `[se]` (sound effects) — list any looping SFX.<br>• `[bgv]` (background voices) — note if background whimpering, crying, etc., has started.<br>• `[bgm]` (background music) — note active track if relevant.<br>**Important**: Sounds triggered before the voiced line and still looping must be noted. |
| **3. Developer Notes Review** | Read all `;` or `;//` comments from the last major visual/sound event up to the current line.<br>• Summarize any emotional cues (e.g., "girls are losing consciousness")<br>• Include any scene setting notes (e.g., "heroine overwhelmed," "tentacle assault continues") |
| **4. Narration Emotional Tone** | If narration is present:<br>• Summarize how it describes emotional/physical states (e.g., "faint," "disoriented," "desperate struggle") |
| **5. Other Active Effects** | Note any additional visual/sound cues:<br>• Panning or movement `[move]` commands<br>• Filters (e.g., "TV effect" overlays)<br>• UI changes (e.g., hidden message windows) |

---

### 📃 Mandatory Context Recap Template

Before tagging a line, fill in this table to standardize context gathering:

| Context Category | Notes |
|:---|:---|
| Visual Focus | (e.g., `ev46a`, center focus on Akane) |
| Active SE | (e.g., `SE触手ループ` looping ambient tentacle sounds) |
| Active BGV | (e.g., None yet, but developer notes suggest planning) |
| Active BGM | (e.g., `bgm_event1` soft background music) |
| Developer Notes | (e.g., Girls are overwhelmed, unable to resist) |
| Narration Emotional Tone | (e.g., Describes faintness and loss of control) |
| Other Active Effects | (e.g., Message window hidden for full CG view) |

**You may not proceed to assign `{emote:*}` or `{intent:*}` tags until the context table is fully filled out.**

---

### ✨ Additional Recommended Best Practices

- **Scanning Range**: When checking for context, scan backwards **at least** to the last `[evcg]`, `[bg]`, `[se]`, `[bgv]`, or significant developer comment, whichever is farthest.
- **Loop Awareness**: Treat any `loop` argument in `[se]` or `[bgv]` as persistent until explicitly stopped.
- **Narration vs. Dialogue**: If narration immediately before a voiced line shifts emotional tone, factor it into tagging decisions.
- **Developer Notes Priority**: Treat developer notes describing emotion/scene as **equal to** in-script narration for emotional setting.

---

### ❗ Common Mistakes This System Prevents

- Missing active background tentacle sound loops
- Missing camera panning focus on a specific girl
- Misreading tone as "angry" when developer notes indicate "weak and fading"
- Overlooking active visual filters that change scene mood
- Skipping developer scene notes that radically change emotional interpretation

---

### 🌍 Why This Process Matters

This rigorous context capture ensures that TTS models trained on these tags:
- Match emotional tone naturally
- Align voice delivery to scene visuals
- Preserve nuance intended by original Japanese seiyuu
- Improve accuracy, believability, and listener immersion

---

▶️ **Once the Context Recap is complete, proceed with tag assignment according to this guide and emotion and intent standards.**

---

## 🧾 Inference Rules for Key Fields
																							   
### 👧 Character Inference

| When                            | Inferred From                                              |
| ------------------------------- | ---------------------------------------------------------- |
| Dialogue line                   | Name macro (e.g., `【茜】`) on previous line                  |
| Voice macro line (`[vo_*]`)     | From filename in the `File ID`, e.g., `akane_0002` → Akane |
| Name macro line (`【茜】`)         | Directly maps to the character name                        |
| Background voice loop (`bgv_*`) | Macro name or associated folder (e.g., `bgv_aka` → Akane)  |

Character should be explicitly filled once per row, even if duplicated across voice/name/dialogue groupings.

---

### 📁 File ID Inference

| When                           | Inferred From                                                                                       |
| ------------------------------ | --------------------------------------------------------------------------------------------------- |
| `vo_*`, `bgv_*`, or `se` macro | The asset filename referenced in the macro (e.g., `vo_aka s="akane_0002"` → `File ID = akane_0002`) |
| `bgm` macro                    | From the value in `storage="..."`                                                                   |
| `evcg` macro                   | From the CG filename in `storage="..."`                                                             |

---

### 🔗 Voice Index Inference

| When                                  | Inferred From                                                          |
| ------------------------------------- | ---------------------------------------------------------------------- |
| Dialogue line after `[vo_*]`          | Set `Voice Index` to the line number of the matching voice macro above |
| Internal monologue after `[vo_*]`     | Same as above; pairing still applies                                   |
| Name macro between voice and dialogue | Does not block `Voice Index` pairing                                   |

---

### 🏷️ Label Inference

| When               | Inferred From                                |
| ------------------ | -------------------------------------------- |
| Any line following | The most recently declared `*label` above it |

Always update the `Label` field as the script enters a new `*label` section.

---

### 🏷️ Metadata Tags Inference

| When                                 | Inferred From                                                          |
| ------------------------------------ | ---------------------------------------------------------------------- |
| Dialogue content                     | Word choice, emotion conveyed by speech or internal monologue          |
| Voice tone in `.ogg`                 | Breathiness, crying, screaming, moaning, begging tone indicators       |
| Surrounding narration                | Physical actions described (e.g., penetration, exposure, submission)   |
| Active CG and SE macros              | Visual and sound triggers implying distress, pleasure, fear, or climax |
| BGV or BGM presence                  | Emotional atmosphere (e.g., ominous, tense, sorrowful)                 |
| Sprite overlays, face IDs, and blush | Refer to `std_sprite.md` for emotionally coded sprite expressions      |

### 🎭 Sprite-Based Emotion Inference

| When                                           | Inferred From                                                                   |
| ---------------------------------------------- | ------------------------------------------------------------------------------- |
| Blush (`ho`, `hoho`) present                   | Heightened arousal, embarrassment `{emote:pleasure}` or `{emote:shame}`         |
| Tears or tearful expression (Face ID 10+)      | Likely `{emote:cry}`, `{emote:broken}`, or `{emote:fear}` depending on context  |
| Semen overlay (`eki`)                          | Climax reached or intense physical stimulation `{emote:climax}{emote:pleasure}` |
| Agony face IDs (e.g., f12)                     | Strong distress, `{emote:agony}` or `{emote:cry}`                               |
| Smirks or taunting expressions (e.g., Mei f14) | `{emote:mocking}{emote:pleasure}`                                               |

---

### 📝 Notes Inference

| When                             | Inferred From                                                              |
| -------------------------------- | -------------------------------------------------------------------------- |
| Significant SE or BGM activation | Note the emotional/environmental shift                                     |
| CG changes                       | Note the visual transition and its emotional impact                        |
| Narration describing sensations  | Summarize how the protagonist or girls are physically/emotionally affected |
| Developer comments (`;`)         | Capture guidance or tone-setting comments into `Notes` where relevant      |

---

### 🚫 Common Inference Mistakes

| Mistake                                         | Why It’s Wrong                                                       | Correct Approach                                                                                                                            |
| ----------------------------------------------- | -------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| Inferring `{emote:cry}` from “Ah… ah…”          | Moaning alone doesn’t mean crying                                    | Use `{fx}` or `{tts:skip}` unless the `.ogg` includes sobbing, the narration explicitly states it, or it's supported by CG or sprite detail |
| Assigning `Character` from voice filename guess | Not all filenames cleanly map to character—especially mob voices     | Use preceding name macro (`【茜】`) or macro structure to confirm                                                                              |
| Using `[evcg]` alone to tag `{emote:climax}`    | CG presence does not equal climax                                    | Look for paired sound effects (e.g., ejaculation), scream patterns, or context                                                              |
| Ignoring developer comments that alter tone     | Comment like “ここからは快楽強め” may signal tonal shift that affects tagging | Include comment summary in `Notes` and adjust surrounding emotion tags accordingly                                                          |
| Assuming all internal monologues are `Dialogue` | Parentheses `（...）` lines are not spoken aloud                       | Tag with `{intent:inner_monologue}` and treat as a different tone model                                                                     |

---

## ✅ Final Notes

- `Index` must always match the actual `.ks` file line number.
- Emotional state is inferred from **macro calls**, **narration**, **SE/BGV/BGM cues**, and **visual CG or sprite overlays**.
- Use `Label` sections to define scene blocks.
- Do **not** infer metadata or emotion from dialogue alone. Context is always required.

---

## 📚 Related Documentation

These documents supplement tagging and indexing workflows:

- `styleguide.md` — Tone, word choice, and policy-compliant phrasing
- `workflow.md` — TTS tag processing, audio model structure, `{tts:skip}` logic
- `tagging_guide.md` — Central definitions for `{emote:*}`, `{tts:*}`, `{lang:*}`, etc.
- `translation_dialogue.md` — Macro structure and formatting retention
- `evcg.md` — Event CG macro breakdowns and visual impact
- `contextual_emotion_cg.md` — Real scene-based emotion interpretation for Event CGs
- `cotextual_emotion_guide.md` — Companion for sprite-based or non-CG emotional context
- `std_sprite.md` — Sprite Face ID, blush, overlay, and pose-based emotional inference guide

---

### 📋 Document Metadata

- **Version**: 1.0 (April 2025)
- **Maintainer**: Voice Indexing Project Lead
- **Primary Editors**: [Your Name Here]
- **Purpose**: Internal use for voice macro metadata tagging, scene inference, and TTS training support.
- **Last Full Audit**: April 27, 2025

---

