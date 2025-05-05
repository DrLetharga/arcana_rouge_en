# 📘 Full Scene Macro Indexing & Voice Tagging Guide

This document defines the **full line-by-line macro indexing** system for `.ks` script files, including voice lines, event CGs, sound effects, screen effects, background music, and scene context.

It **replaces** older "voice_indexing" terminology and covers **all script elements**, not just voiced dialogue.

---

### 📋 Table of Contents

**<span style="color:#4CAF50">🚀 Project Setup & Core Processing</span>**
- [<span style="color:#4CAF50">🌟 Purpose</span>](#🌟%20purpose)
- [<span style="color:#4CAF50">⚡ Script Macro Processing Order</span>](#⚡%20script%20macro%20processing%20order)
- [<span style="color:#4CAF50">📋 Full Line-by-Line Example</span>](#📋%20full%20line-by-line%20example)

**<span style="color:#2196F3">📑 Macro Indexing & Structure</span>**
- [<span style="color:#2196F3">🧹 File Structure Overview</span>](#🧹%20file%20structure%20overview)
- [<span style="color:#2196F3">🧬 Type Definitions</span>](#🧬%20type%20definitions)
- [<span style="color:#2196F3">🛠️ Special Handling for `[se]` Macros</span>](#🛠️%20special%20handling%20for%20%60%5Bse%5D%60%20macros)
- [<span style="color:#FF9800">🛑 Unknown Macro Handling</span>](#🛑%20unknown%20macro%20handling)
- [<span style="color:#FF9800">📊 Structure Macro Handling</span>](#📊%20structure%20macro%20handling)

**<span style="color:#9C27B0">🎙️ Voice & Dialogue Tagging</span>**
- [<span style="color:#FF9800">🏷️ Metadata Tag Examples</span>](#🏷️%20metadata%20tag%20examples)
- [<span style="color:#4CAF50">📣 Mandatory Visual & Sound Event Logging</span>](#📣%20mandatory%20visual%20&%20sound%20event%20logging)
- [<span style="color:#9C27B0">🔍 Voice Macro and Dialogue Pairing</span>](#🔍%20voice%20macro%20and%20dialogue%20pairing)
- [<span style="color:#9C27B0">📝 Translation and Compliance</span>](#📝%20translation%20and%20compliance)
- [<span style="color:#9C27B0">📦 Example BGM Entry</span>](#📦%20example%20bgm%20entry%20%28from%20index_bgm.csv%29)
- [<span style="color:#4CAF50">📢 CG and Effect Macros on Same Line</span>](#📢%20cg%20and%20effect%20macros%20on%20same%20line)
- [<span style="color:#4CAF50">📢 CG and Embedded SE on Same Line</span>](#📢%20cg%20and%20embedded%20se%20on%20same%20line)

**<span style="color:#9C27B0">🧠 Contextual Scene Inference</span>**
- [<span style="color:#9C27B0">🧾 Inference Rules for Key Fields</span>](#🧾%20inference%20rules%20for%20key%20fields)
  - [<span style="color:#9C27B0">👧 Character Inference</span>](#🧾%20inference%20rules%20for%20key%20fields#👧%20character%20inference)
  - [<span style="color:#9C27B0">📁 File ID Inference</span>](#🧾%20inference%20rules%20for%20key%20fields#📁%20file%20id%20inference)
  - [<span style="color:#9C27B0">🔗 Voice Index Inference</span>](#🧾%20inference%20rules%20for%20key%20fields#🔗%20voice%20index%20inference)
  - [<span style="color:#9C27B0">🏷️ Label Inference</span>](#🧾%20inference%20rules%20for%20key%20fields#🏷️%20label%20inference)
  - [<span style="color:#9C27B0">🏷️ Metadata Tags Inference</span>](#🧾%20inference%20rules%20for%20key%20fields#🏷️%20metadata%20tags%20inference)
  - [<span style="color:#9C27B0">🎭 Sprite-Based Emotion Inference</span>](#🧾%20inference%20rules%20for%20key%20fields#🎭%20sprite-based%20emotion%20inference)
  - [<span style="color:#9C27B0">📝 Notes Inference</span>](#🧾%20inference%20rules%20for%20key%20fields#📝%20notes%20inference)

**<span style="color:#03A9F4">🔍 Quality Assurance and Expansion</span>**
- [<span style="color:#03A9F4">🚫 Common Inference Mistakes</span>](#🚫%20common%20inference%20mistakes)
- [<span style="color:#03A9F4">✨ Optional Future Enhancements</span>](#✨%20optional%20future%20enhancements)

**<span style="color:#4CAF50">📚 Finalization</span>**
- [<span style="color:#4CAF50">✅ Final Notes</span>](#✅%20final%20notes)
- [<span style="color:#4CAF50">📚 Related Documentation</span>](#📚%20related%20documentation)
- [<span style="color:#4CAF50">📋 Document Metadata</span>](#📋%20document%20metadata)

---

## 🌟 Purpose

To provide consistent, richly contextualized annotations for every significant line in `.ks` script files, enabling:
- Accurate voice macro tagging
- Full scene structure reconstruction
- Context-aware emotional inference
- Emotionally aligned TTS training

**Accuracy and structural fidelity always take precedence over speed.**

---

## ⚡ Script Macro Processing Order

- Start from **Line 1** of the `.ks` file.
- Process **every line sequentially**, with no skipping.
- Log all macros and scene instructions:
  - `Label`, `Voice`, `Name`, `Dialogue`, `SE`, `BGM`, `BGV`, `Move`, `Effect`, `CG`, `BG`, `Video`
- Even **unknown macros** (like `[wm]`) must be logged as `Unknown` Type.
- Visual (`[evcg]`, `[bg]`) and sound (`[se]`, `[bgm]`, `[bgv_*]`) macros must be treated as equally important to voice lines.
- Dialogue enclosed in full-width parentheses `（...）` must be tagged as `{intent:inner_monologue}`.

**No voice macro tagging may occur until all prior scene context is properly indexed.**

---

## 📋 Full Line-by-Line Example

Example `.ks`:

```ks
*scene_start
[se buf=1 storage="&sf.SE触手ループ" loop]
[evcg storage="ev46a" y="0"]
[vo_aka s="akane_0001"]
[【茜】]
「こんなのやだぁ……離してよぉ……」
```

Would produce in `voice_index001.csv`:

| Index | Type | Label | Macro | File ID | Character | Voice Index | Japanese Line | English Line | Metadata Tags | Words | Notes | Explicit Notes |
|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|
| 1 | Label | *scene_start | | | | | | | | | | |
| 2 | SE | *scene_start | [se buf=1 storage="&sf.SE触手ループ" loop] | &sf.SE触手ループ | | | | | | | | |
| 3 | CG | *scene_start | [evcg storage="ev46a" y="0"] | ev46a | | | | | | | | |
| 4 | Voice | *scene_start | [vo_aka s="akane_0001"] | akane_0001 | Akane | | | | | | | |
| 5 | Name | *scene_start | [【茜】] | | Akane | | | | | | | |
| 6 | Dialogue | *scene_start | | | Akane | 4 | 「こんなのやだぁ……離してよぉ……」 | (Needs translation) | | | | |

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
| `Label` | A navigation label (`*label_name`) for script jumps and flow control. |
| `Voice` | A voice macro `[vo_*]` line triggering a spoken audio file. |
| `Name` | A name macro `[【Name】]` that displays a speaking character's name. |
| `Dialogue` | A player-facing spoken line, narration, or inner monologue. |
| `SE` | A sound effect trigger macro. |
| `BGM` | Background music start or stop macro. |
| `BGV` | Background voice loop macro for ambient character sounds. |
| `Sprite` | Macro that displays or configures character sprite images on screen, positioning them on layers or compositing multiple characters. (e.g., `[std_aka]`, `[std_kak]`, `[multi_std_ch]`) |
| `Selection` | Macro that manages selectable choices for the player or manipulates selection-related layers and history. (e.g., `[sel01]`, `[sel_hisout]`) |
| `Narration` | Protagonist or descriptive narration outside of dialogue quotes                                                            |
| `Comment`   | Developer comments starting with `;`                                                                                       |
| `CG` | Event CG loading macro for full-screen illustrations. |
| `BG` | Static background image load macro. |
| `Move` | Macro that moves camera, layers, or character sprites (e.g., `[move]`, `[wm]`, `[trans_c]`). |
| `Effect` | Visual effect macro (e.g., `[blur]`, `[zoom_fore]`, `[quake_bg]`). |
| `Video` | Embedded video operations (e.g., `[playvideo]`, `[openvideo]`). |
| `Structure` | Macro that adjusts UI, message layers, or system state without direct player-visible content (e.g., `[fc]`, `[sysbt_meswin]`). |
| `Unknown` | Any macro not yet mapped. Logged but flagged for manual review. |

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

## 🛠️ Special Handling for `[se]` Macros

When logging and tagging `[se storage="..."]` macros:

- If the `storage` argument uses a shortcut name like `&sf.SEピストン_人外`:
  - Lookup the actual mapped sound effect in `SoundEffectGlossary_Tagged.csv`.
  - Default to tagging the line with `{fx}` if it is a pure non-verbal sound effect (e.g., wet sounds, thrusting, ejaculation sounds).
  - Only apply specific `{emote:*}` tags (e.g., `{emote:cry}`, `{emote:pleasure}`) if the sound file clearly represents a **voiced emotional reaction**, not a physical sound.
- Never assume sound effect tone by filename alone.
- Always validate SE type and impact through the glossary.

Example:
```ks
[se storage="&sf.SEピストン_人外"]
```

Would resolve to:

"Piston (Monster)" — tagged with {fx}.

---

## 🛑 Unknown Macro Handling

If a macro is not defined in the Type Map:
- Set `Type = Unknown`
- Record the full macro string in `Macro`.
- Add this to `Notes`: **"Evaluate macro purpose and visual/sound effect."**

Unknowns must be revisited during the QA phase.

---

## 📊 Structure Macro Handling

When macros such as `[fc]` are encountered, assign them `Type = Structure`.

| Field | Value |
|:---|:---|
| Type | Structure |
| Macro | [fc] |
| File ID | (blank) |
| Character | (blank) |
| Voice Index | (blank) |
| Notes | System/UI reset before player-facing text. |
| Metadata Tags | (none) |

**Purpose:**
- Prepares UI layers for correct display after label jumps, saves, or loads.
- Clears old UI elements, resets internal flags, and ensures player-facing text appears cleanly.

**Important:**
- Structure macros are critical for visual/technical flow but do **not** influence emotion or translation tone.
- No `{emote:*}` or `{intent:*}` tags should be assigned to Structure rows.

Examples include:
- `[fc]` (flow control)
- Future possible `Structure` macros handling message windows, text clearing, or system resets.

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

## 📣 Mandatory Visual & Sound Event Logging

Visual and sound events are **critical** for emotional inference.
- `[evcg]`, `[bg]`, `[video]` ➔ Scene visual anchors.
- `[se]`, `[bgv_*]`, `[bgm]` ➔ Scene auditory mood.

These must be logged **immediately** when encountered.  
Skipping them will permanently break emotional inference quality.

### ✅ Example: Background Transition Mid-Scene with No Narration

This example shows how a `[bg]` macro can fully inform emotional tagging even without narration or visible emotional cues, using the catalog from `index_bg98.csv`.

```ks
[se storage="seC054"] ; school bell
[bg storage="bg007a"][trans_c cross time=1000]
[std_aka m se p1 f01 ce]
[vo_aka s="akane_0123"]
[【茜】]
「やっと終わった……」
```

From `index_bg.csv`:

```csv
bg007a.png,Resource Room,Day,Peaceful,"{location:school}, {time:day}, {emote:peaceful}, {scene:aftermath}","Protagonist reflects on days without demons; atmosphere is tranquil.",arcana116.ks,7
```

**Inference Flow:**

- Background: `bg007a` → peaceful resource room during daytime
    
- Sound: `seC054` school bell indicates class/session ending
    
- Voice line: 「やっと終わった……」 ("Finally, it's over...")
    

**Tags Assigned:**

- `{emote:relief}`
    
- `{intent:spoken}`
    
- `{location:school}`
    
- `{scene:aftermath}`
    

**Key Point:**  
No narration or sprite emotion is needed — the background alone, combined with the catalog and scene pacing, allows full emotional tagging in compliance with all QA standards.

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

## 📦 Example BGM Entry (from index_bgm.csv)

```csv
KS File,BGM File,Start Line,End Line,Looping,Duration (s),Tone Tags,Notes
arcana001.ks,BGM05.ogg,54,,True,88.6,{tone:ominous}{tone:tense},"Ambient, low-drone track used to create a ritualistic and oppressive atmosphere throughout EV46 scene."
```

### 🎼 Conditional BGM Macros
Some BGM macros include a conditional expression, such as:

```ks
[bgm016 cond="tf.scene_mode == 1"]
```

In this case, `tf.scene_mode` is a binary flag:

- `0` = Normal playthrough
    
- `1` = Replay mode (e.g., during scene replay or memory viewer)
    
This macro ensures the correct background music plays even during replays.  
**For tagging and indexing purposes, this should still be logged as a valid BGM event.**

> ✅ Treat all `[bgm### cond="..."]` calls as functionally equivalent to their unconditional form, unless the condition is guaranteed to fail.  
> These calls should still be included in `index_bgm.csv` with full tags and context.

### 🔁 Cross-Script BGM Continuity

In cases where a new `.ks` script begins (e.g., `arcana004.ks`) and no `[bgm###]` macro is present before narration or dialogue begins, the system must assume that background music **continues** from the previous script unless:

- `[bgmstop]` is called before the jump
- A new `[bgm###]` macro replaces it before the next voiced or visual event

To determine the active BGM track:

1. Locate all `[jump storage="target.ks" target=*TOP]` or similar calls in other `.ks` files.
2. If a single source file jumps into the current file, check **that script** for the most recent `[bgm###]` call prior to the jump.
3. If neither `[bgmstop]` nor a call to `[ANTEN]` without the `bgmon` flag occurs between the last `[bgm###]` and the `[jump]`, inherit that BGM into the new file.
4. If the source file itself was jumped into, this process **must be recursive**, tracing back until an unambiguous BGM origin is found.

> ✅ This ensures emotional continuity across `.ks` file boundaries, particularly for scene replays, event CG segments, or branching transitions.

### 🎯 Selection and Branching BGM Inheritance
 If a scene ends in a `[selXX]` branching macro:
- **Do not assume the BGM stops** just because the script ends.
    
 - Follow the `storage="..."` destination into the specified `.ks` file and label (`target=*TOP` implies line 2).
     
 - If no `[bgm###]`, `[fadeoutbgm]`, or `[ANTEN]` is encountered prior to the branch:
     
     - **Inherit** the current BGM into the next script.
         
     - Treat the inherited segment as a new row in `index_bgm.csv`, with `KS File = destination script`, `Start Line = 2`, and an `End Line` based on when the BGM is explicitly stopped or replaced.
         

#### Example:

```csv
`KS File,BGM File,Start Line,End Line,Looping,Duration (s),Tone Tags,Notes arcana108.ks,BGM02.ogg,502,566,False,113.75,"{tone:ritual}{tone:resolve}","Track begins during the four-girl alignment scene and carries into selection screen." arcana109.ks,BGM02.ogg,2,15,False,113.75,"{tone:residual}","Continues from arcana108.ks after player selects 'I`
```

### 🧩 Conditional Logic BGM Continuity

If a `[bgm###]` macro is active and **[jump] statements are conditionally triggered** using `[if]`, `[elsif]`, or `[endif]` logic blocks:

- **Always analyze each `jump` target individually** unless the BGM has been stopped prior to the branch.
    
- These logic structures may contain multiple `[jump storage="xxx.ks" target=*TOP]` statements pointing to different scripts depending on variable flags.
    
- If **no `[fadeoutbgm]`, `[bgmstop]`, or `[ANTEN]` without `bgmon`** appears before the conditionals, assume that **each target inherits the BGM** and must be logged as a separate continuation.
    

#### ✅ Indexing Rule:

> Treat conditional jumps as **equivalent to `[selXX]` branching** for the purpose of BGM inheritance.

#### 🧠 Example:


```ks
[if    exp="f.l_s807 == 1 && f.l_s810 == 0"][jump storage="arcana814.ks" target=*TOP] [elsif exp="f.l_s807 == 1 && f.l_s813 == 1"][jump storage="arcana813.ks" target=*TOP] [endif]
```

- If `BGM07.ogg` is active and not stopped before this block, then:
    
    - Create an `index_bgm.csv` entry for `arcana814.ks` with `Start Line = 2` assuming `*TOP` is on Line 2, but verify the Label's location.
        
    - Create a second entry for `arcana813.ks` with `Start Line = 2` assuming `*TOP` is on Line 2, but verify the Label's location.
        
    - Evaluate each file to determine where BGM stops
        

> 🛑 **Do not skip these paths** during index creation. Conditional logic branching is **not optional**.

### 🎬 BGM Stop via `[ANTEN]` Macro:

The `[ANTEN]` macro is frequently used to fade to black and transition scenes. By default, it **calls `[fadeoutbgm]` and stops all sound**, unless the macro is invoked with the `bgmon` flag.

- `[ANTEN blk]` → Stops BGM (default behavior)
- `[ANTEN blk bgmon]` → Preserves currently playing BGM

Always inspect how `[ANTEN]` is called before a `[jump]` to determine if BGM continues into the next script.

### 🔇 BGM Stop via `[fadeoutbgm]` (Standalone)

The `[fadeoutbgm]` macro may also appear on its own, without being wrapped in `[ANTEN]`.

Example:

```ks
[fadeoutbgm time=1000]
```

This should be treated the same as `[bgmstop]` for continuity tracking.  
It signifies the end of a BGM track and prevents it from being carried forward into a new `.ks` script.

> ✅ Always check for standalone `[fadeoutbgm]` before any `[jump]`, label, or scene restart.

---

- If a `[bgm###]` macro appears and no BGM stop condition is found afterward, the `End Line` should default to the final line of the `.ks` file.

- Before assigning a stop point, always verify the file’s total length to avoid referencing invalid lines.

- This prevents phantom BGM durations due to incorrect search termination or assumed content beyond EOF.

---

## 📢 CG and Effect Macros on Same Line

When a `[trans_c]` or `[move]` macro appears on the **same line** as `[evcg]`, split them into two separate rows.

- Row 1: `Type = CG`, for `[evcg ...]`
- Row 2: `Type = Effect`, for `[trans_c ...]`
- **Both share the same Index**.

### Example:

```ks
[evcg storage="ev46a"][trans_c cross time=1000]
```
Produces:

| Index | Type | Macro | File ID |
|:-----|:-----|:-----|:-----|
| 33 | CG | [evcg storage="ev46a"] | ev46a |
| 33 | Effect | [trans_c cross time=1000] |  |

- Each will share the same `Index` (line number) from the `.ks` file.
- First row: Type = `CG` for `[evcg]`
- Second row: Type = `Effect` for `[trans_c]` or other visual commands

- This ensures both the visual content **and** the transition logic are preserved contextually.

---


## 📢 CG and Embedded SE on Same Line

> When an `[evcg]` macro contains a `se="..."` attribute (embedded sound effect trigger), treat it as if **two macros appeared** on the same line.
> 
> - Row 1: `Type = CG`, for the `[evcg ...]`
> - Row 2: `Type = SE`, for the embedded `se="..."`
> 
> Both rows **share the same Index number** (from the `.ks` file).

---

### Example:

```ks
[evcg射精フラ storage="ev46f" y=-100 se="&sf.SE射精_外_人外_長"]
```

Would produce:

| Index | Type | Label | Macro | File ID | Character |
|:-----|:-----|:-----|:-----|:-----|:-----|
| 823 | CG | *120 | [evcg射精フラ storage="ev46f" y=-100 se="&sf.SE射精_外_人外_長"] | ev46f | Akane |
| 823 | SE | *120 | [evcg射精フラ storage="ev46f" y=-100 se="&sf.SE射精_外_人外_長"] | SE射精_外_人外_長 | Akane |

---

### 📋 Special Handling Rules:
> - Extract the `storage="..."` value for the CG row (e.g., `ev46f`).
> - Extract the `se="..."` value for the SE row (e.g., `SE射精_外_人外_長`).
> - Character is inferred based on:
>   - Current scene focus (`y=` panning offset, if relevant),
>   - Preceding CGs,
>   - or established character during the event sequence.

> **This ensures both the visual impact and the simultaneous sound effect are correctly captured for emotional and timing analysis.**

---

## 👁️ Mandatory Context Collection Before Tagging a Line

Before assigning any emotion (`{emote:*}`) or intent (`{intent:*}`) tags, you **must** collect and document all relevant scene context. No tagging may proceed until this checklist is complete.

---

### 🔹 Mandatory Pre-Tagging Checklist

| Category | Required Action |
|:---|:---|
| **1. Current Visual Focus** | Identify the most recent `[evcg]`, `[bg]`, or `[video]` event prior to the voiced line.<br>• Record the storage filename (e.g., `ev46a`)<br>• Note any `x=`, `y=` attributes (camera focus or panning details) and explain which character or scene region is in visual focus. |
| **2. Current Active Sounds** | Identify all ambient or background sounds still active:<br>• `[se]` (sound effects) — list any looping SFX.<br>• `[bgv_*]` (background voices) — note if background whimpering, crying, etc., has started.<br>• `[bgm]` (background music) — note active track if relevant.<br>**Important**: Sounds triggered before the voiced line and still looping must be noted. |
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

- **Scanning Range**: When checking for context, scan backwards **at least** to the last `[evcg]`, `[bg]`, `[se]`, `[bgv_*]`, or significant developer comment, whichever is farthest.
- **Loop Awareness**: Treat any `loop` argument in `[se]` or `[bgv_*]` as persistent until explicitly stopped.
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

## ✨ Optional Future Enhancements

| Enhancement | Description |
|:---|:---|
| Auto Word Count | Calculate and fill `Words` column during pass 2 (when Whisper data is available). |
| Macro Validation Step | After macro capture, validate against approved macro lists to spot errors early. |
| Error Tagging for Macros | Auto-tag macros that look malformed or out of place for manual QA later. |
| Visual Scene Maps | Optionally generate a "scene storyboard" from sequential `[evcg]` calls to visually map emotional arcs. |

---

## ✅ Final Notes

- `Index` must always match the actual `.ks` file line number.
- Emotional state is inferred from **macro calls**, **narration**, **SE/BGV/BGM cues**, and **visual CG or sprite overlays**.
- Use `Label` sections to define scene blocks.
- Do **not** infer metadata or emotion from dialogue alone. Context is always required.
- **All macros must be logged.**
- **No events can be skipped or assumed irrelevant.**
- **Always treat visual and sound context as first-class data, not just dialogue.**
- **Accuracy > Speed. Always.**

---

## 📚 Related Documentation

The following documents are required to fully index and tag `.ks` scripts:

- `Macro_Type_Map.md` — Master macro classification reference. Always validate macros against this map before assigning a Type.
- `Macro_Indexing_QA_Checklist.md` — Standard checklist for validating macro logging, unknown handling, and special cases.
- `SoundEffectGlossary_Tagged.csv` — Full glossary of shortcut sound effect mappings to English descriptions, emotion tags, and scene classifications. Mandatory when interpreting `[se]` macros.
- `styleguide.md` — Tone, word choice, and policy-compliant phrasing.
- `workflow.md` — TTS tag processing, audio model structure, `{tts:skip}` logic.
- `tagging_guide.md` — Central definitions for `{emote:*}`, `{tts:*}`, `{lang:*}`, etc.
- `translation_dialogue.md` — Macro structure and formatting retention.
- `evcg.md` — Event CG macro breakdowns and visual impact.
- `contextual_emotion_cg.md` — Real scene-based emotion interpretation for Event CGs.
- `contextual_emotion_guide.md` — Companion for sprite-based or non-CG emotional context.
- `std_sprite.md` — Sprite Face ID, blush, overlay, and pose-based emotional inference guide.
- `index_bg.csv` — Background image catalog containing scene type, time of day, emotional tone, suggested tags, and script linkage.  
  Used to infer `{emote:*}`, `{intent:*}`, `{tone:*}`, and `{scene:*}` metadata based on `[bg]` macro calls.  
  All background transitions must be matched to this file for accurate scene context prior to emotion tagging.
- [Dreamsavior.net KAG Tag Reference](https://dreamsavior.net/docs/kag-references/tag-reference/) — Official reference for basic KAG engine tags (non-project-specific).

---

### 📋 Document Metadata

- **Version**: 2.0 (April 2025)
- **Maintainer**: Voice Indexing Project Lead
- **Primary Editors**: [Your Name Here]
- **Purpose**: Internal use for voice macro metadata tagging, scene inference, and TTS training support.
- **Last Full Audit**: April 30, 2025

---

