# 🎞️ EVCG Macro System Overview

This document defines the macro structure and usage patterns for displaying Event CGs via the `[evcg]` system and its specialized wrappers in `.ks` scripts.

---

## 🔧 Core Macros

These macros are used to load and enhance event CGs with special effects and emotional context:

| Macro Name       | Purpose                                                      |
|------------------|--------------------------------------------------------------|
| `evcg`           | Base macro that loads an image via `[image storage=...]`     |
| `evcg射精フラ`     | Triggers ejaculation flash overlay and sound + loads CG       |
| `evcg白フラ`       | Loads CG with a white flash for emphasis                    |
| `evcg赤フラ`       | Loads CG with red flash, used for distress/forced scenes     |

All effect macros ultimately call `[evcg *]` internally with passed parameters.

---

## 🔡 Macro Parameters

| Parameter     | Description                          | Example                              |
|---------------|--------------------------------------|--------------------------------------|
| `storage`     | Filename of the event CG to load     | `ev05a`, `ev20f`, etc.               |
| `y`           | Vertical image offset (panning)      | `-100` shifts the image upward       |
| `se`          | Sound effect to play with CG         | `&sf.SE射精_外_人外_長`               |
| `cutin`       | (Optional) Overlay cut-in image      | `cutin1.png`                         |
| `layer` / `page` | Layering overrides (rare)         | Typically `layer=base page=back`     |

---

## 📜 Macro Flow

Typical macro call in script:
```ks
[evcg射精フラ storage="ev46f" y=-100 se="&sf.SE射精_外_人外_長"]
[vo_mei s="mei_0153"]
「やっ……そんな、奥まで……」
```

This resolves to:
- Play sound effect
- Flash white screen if enabled
- Load image `ev46f.png` at offset `top=-100`
- Infer emotion `{emote:climax}{emote:pleasure}`

---

## 🔁 Internal Macro Resolution

Each wrapper macro uses `[evcg * cond="mp.storage != void"]` to dynamically pass arguments.

For example:
```ks
[evcg赤フラ storage="ev08b" y=0]
```
Internally becomes:
```ks
[image storage="ev08b" layer=base page=back visible=false left=0 top=0]
```

---

## 🎯 Emotional Tagging by Macro

| Macro             | Suggested Emotion Tags                          |
|------------------|--------------------------------------------------|
| `evcg射精フラ`     | `{emote:climax}{emote:pleasure}` + `{tts:skip}` (if line is moan or SFX) |
| `evcg白フラ`       | (Scene-dependent: neutral, emphasis, or climax) |
| `evcg赤フラ`       | `{emote:cry}{emote:broken}{emote:fear}`         |

---

## 🧼 Cleanup & Layer Behavior

All macros free both:
```ks
[freeimage layer=base page=fore]
[freeimage layer=base page=back]
```

This prevents overlap and prepares for transitions.

---

## 🧪 Future Tasks

- [x] Confirm exact behavior of `n=` → Not used
- [x] Confirm layering override support (e.g., `layer=`, `page=`) → No overrides found
- [x] Track `cutin` overlays via `[evcg_cutin]` → Defined but unused

---

## 🌀 Transition Macro Notes

The `[trans_c]` macro is a dynamic transition handler defined in `macro05_effect.ks`. It selects a visual transition effect based on which `mp.*` flag is active when called.

### 🔁 Behavior Summary

- Matches `mp.*` keys such as `mp.cross`, `mp.wave2`, `mp.blood1`, etc.
- Each match triggers a corresponding `[trans ...]` statement with specific `rule`, `vague`, and `time`
- If no `mp.*` match is found, it defaults to `[trans method=crossfade time=0]`

### 🧠 Common Examples

```ks
[trans_c cross time=1000]
→ [trans method=crossfade time=1000][wt_c]

[trans_c blind_lr time=800 vague=50]
→ [trans method=universal rule="blindX" vague=50 time=800][wt_c]
```

### 🎨 Supported Effects (Examples)

| mp.* Flag         | Visual Effect Description             |
|-------------------|----------------------------------------|
| `cross`           | Standard crossfade                    |
| `blind_lr`        | Horizontal blinds                     |
| `circle`          | Circular reveal                       |
| `wave2`           | Wavy distortion                       |
| `blood1` / `blood2` | Blood-burst mask animation            |
| `ruf_lr`, `ruf_rl`| Alpha-rub reveal (ImageCrossAlpha)   |
| `streamline_l`    | Smooth directional wipe               |

> Note: `mp` keys must be lowercase — uppercase is not supported due to macro constraints.

This macro is frequently used after `[evcg]` calls to set the tone or pacing of visual scene transitions.

---

## 🖥️ TV Filter Behavior (`tv`, `tvoff`, `cond`)

Some CGs are displayed with a simulated "TV screen" filter using the `tv` and `tvoff` flags. This is controlled by the variable `f.l_s901`, and implemented in both macro logic and conditional script execution.

### 🔧 Flags and Meaning

| Flag     | Description                                                                 |
|----------|-----------------------------------------------------------------------------|
| `tv`     | Enables a TV-style filter overlay (e.g., sepia haze, visual distortion)     |
| `tvoff`  | Disables the filter, rendering the CG normally                              |
| `cond`   | Conditional execution of the macro, e.g., `cond="f.l_s901 == 1"`            |

### 🧠 Example

```ks
[evcg storage="ev46i" y=0 tvoff cond="f.l_s901 == 0"]
[evcg storage="ev46i" y=0 tv cond="f.l_s901 == 1"]
[trans_c cross time=500]
```

- The first line displays the CG normally when not viewed "through a TV"
- The second line displays the same CG with a TV filter applied when `f.l_s901 == 1`
- These often appear in mirrored pairs

### 🎭 Scene Context

This filter is explained in `arcana901.ks`:

> Apply filter over the event image to make it look slightly like you are looking through a TV.

> If it's over-the-TV direction, the voice should be separately processed.

> This is handled in script to avoid increasing the number of image differentials.

### 🔍 Tagging Implications

- TV-filtered CGs may be treated differently in tagging pipelines or voice models
- Filtered scenes could imply surveillance, narrative distance, or dehumanization
- Consider noting `{filter:tv}` or `{tvview}` tags in downstream processing


---


---

## 🎬 Scene Reconstruction Heuristics

To simulate scene flow, character focus, and emotional progression during event CG playback, the following heuristics can guide parsing and automation:

### 📐 Panning = Camera Motion or Targeted Focus

`x=` and `y=` attributes in `[evcg]` are used to:

- Simulate vertical or horizontal **camera movement** (e.g., looking down a body)
- Shift focus to a specific **character in a multi-girl CG**
- Emphasize a body part, emotional expression, or act relevant to dialogue

```ks
[evcg storage="ev46i" y=0]
[evcg storage="ev46i" y=-450]
[evcg storage="ev46i" y=-750]
```

These represent a progressive downward pan — OR, if characters are positioned at different vertical segments, a shift in narrative attention (e.g., from Akane to Aoi).

```ks
[evcg storage="ev45a" x="&f.ev_x_aka"]
```

Horizontal pan shifts to Akane’s region in a side-by-side composition.

---

### 🖼️ Viewport Repositioning and UI Control

Often paired with `[evcg]`, the following commands may enhance cinematic framing:

```ks
[sysbt_meswin clear]
[move layer=0 time=2000 accel=1 path="(0,-300,255)"]
```

- `sysbt_meswin clear` hides all UI, placing full attention on the CG
- `move` shifts the viewport to a new position with animation
- `path="(x,y,z)"` targets specific CG coordinates — e.g., panning down 300px to highlight Aoi

---

### 🕑 Sharp Cuts = Escalation or Shock

```ks
[evcg射精フラ storage="ev41c"]
[trans_c cross time=0]
```

Zero-time transitions often denote:
- A climax moment
- A narrative jolt (penetration, visual shock, forced movement)

---

### ⛓️ Suggested Scene Flow Metadata

Multi-frame CG sequences may be tagged with structured metadata to capture flow, climax, and focus regions.
																

```json
{
  "sequence": "ev46",
  "frames": ["ev46a", "ev46b", "ev46c", "ev46d", "ev46e", "ev46f", "ev46g", "ev46h", "ev46i"],
  "mask": "ev46_msk",
  "flow": "dynamic",  // flow can alternate focus between characters
  "climax_at": "ev46f",
  "focus_regions": {
    "akane": "y=0",
    "aoi": "y=-300",
    "mia": "y=-700"
  }
}
```

- `mask`: refers to the shared `_msk` file used to identify mosaic overlay regions
- `flow`: set to `"dynamic"` when the camera alternates focus between characters instead of panning in a fixed direction
- `focus_regions`: indicates known vertical offsets used to visually center each character within the scene

This model allows precise tagging, playback emulation, and emotional sequencing for voice or subtitle alignment.

---

### 📐 Panning = Implied Motion

When consecutive `[evcg]` calls use incrementally increasing `y=` values:

```ks
[evcg storage="ev46i" y=0]
[evcg storage="ev46i" y=-450]
[evcg storage="ev46i" y=-750]
```

This implies a **downward pan** over a tall CG image — commonly used to simulate:
- The protagonist's descending gaze
- The path of a monster tentacle or tongue
- Emotional unraveling, vulnerability, or progressive exposure

This pattern allows automated systems to infer **camera motion** without needing explicit narration.

---

### 🕑 Sharp Cuts = Escalation or Shock

```ks
[evcg射精フラ storage="ev41c"]
[trans_c cross time=0]
```

Using `trans_c` with `time=0` immediately after a new CG frame often marks:
- A climax
- A shocking or violent act
- A forceful narrative beat

These sharp cuts often signal the **culmination of buildup**, which can influence emotional tagging and even audio timing.

---

## 🖼️ CG Frame Progression Grouping

Many event CGs are structured as frame sequences with progressive suffixes, such as:
ev12a → ev12b → ev12c → ev12d

These frames represent **a single continuous scene**, evolving over time. This progression often reflects:

- Increasing sexual intensity
- Emotional escalation (e.g., discomfort → crying → climax)
- A linear visual or narrative flow

---

### 📚 Naming Convention

| Filename   | Role in Sequence                  |
|------------|-----------------------------------|
| `ev12a`    | Scene start or neutral baseline   |
| `ev12b`    | Mid-scene development             |
| `ev12d`    | Climax or emotional high point    |

These are **not alternatives or branches** — they should be grouped and interpreted as **a temporal sequence** unless `cond=` suggests otherwise.

---

### 🧩 Automation Tip: Sequence Grouping

Automatically group CGs using the `ev[0-9][0-9][a-z]` pattern:

```json
{
  "sequence_id": "ev12",
  "frames": ["a", "b", "c", "d"]
}
```

This makes it easy to:

- Tag the climax frame with `{emote:climax}`
- Anchor voice lines to specific visual moments
- Control playback or synthesis timing

---

### 🧠 Special Considerations

- The last frame often carries the **strongest emotional tag** (e.g., broken, climax, forced_moan)
- Intermediate frames (`b`, `c`) may still warrant contextual emotion tagging
- If conditional macros are used (via `cond=`), treat them as **forked branches**, not linear


---

## 🔊 Voice/CG Synchronization

When a voiced line and a CG transition appear close together in the script, there is typically a direct association between the **visual** and the **spoken line**.

Understanding and modeling this connection is essential for accurate voice tagging, emotional alignment, and timing synthesis.

---

### 🔁 Standard Pattern

```ks
[evcg storage="ev12f" y=-300]
[vo_aoi s="aoi_0023"]
「Please... not there...!」
```

- The `[evcg]` call sets the visual context
- The following `[vo_*]` line is **visually grounded** in the CG shown
- Emotional metadata should derive from both the line and the image

---

### 📉 Delay or No Association

When the voice line is **separated** from the `[evcg]` call by multiple visual or timing commands:

```ks
[evcg storage="ev13a"]
[wait time=500]
[trans_c cross time=1000]
[vo_mia s="mia_0051"]
```

- This may represent a **delayed reaction** or a non-synchronous emotional beat
- Tagging confidence should be lower unless reinforced by visual or text clues

---

### ⏱️ Sync Heuristics

| Distance from `[evcg]` | Suggested Sync Relationship      |
|------------------------|----------------------------------|
| Immediately following  | Direct emotional sync (high)     |
| 1–2 lines away         | Probable, but needs validation   |
| Separated by `[wait]`  | Delayed or disconnected          |
| No `[evcg]` nearby     | Not linked to event CG           |

---

### 🎯 Tagging Recommendations

- When `[evcg]` directly precedes a `[vo_*]` line, tag that line with CG-based emotional inference
- Track voice-to-CG alignment in export or scripting metadata:
  ```json
  {
    "cg": "ev12f",
    "line": "aoi_0023",
    "emotion": ["cry", "beg"]
  }
  ```
- Consider `{cg_linked:true}` as a flag during pre-processing for voice training


---

## 🎧 Sound Effect Cross-Reference

Many `[evcg]` and `[evcg射精フラ]` macros include a `se="..."` argument that plays a specific sound effect timed to the CG's display. This can offer strong cues for tagging:

- Emotional state (e.g., climax, shock)
- Type of act or bodily interaction
- Trigger points for `{tts:skip}` or voice alignment

---

### 🎼 Examples of Sound-Informed Tagging

```ks
[evcg射精フラ storage="ev12d" se="&sf.SE射精_中_人外_長"]
[vo_mia s="mia_0066"]
「Ahh! It’s... going inside...!」
```

- `SE射精_中_人外_長` likely means internal ejaculation by a non-human character
- Tagging output could include:
  - `{emote:climax}`
  - `{emote:pleasure}`
  - `{sound:ejaculation:internal:monster:long}`

---

### 🔎 Suggested `se` Tag Breakdown

Split sound effect names into parts:
- Prefix: `SE射精` = ejaculation
- Mid-tag: `_中_` = internal (vs `_外_` for external)
- Type: `人外` = monster/non-human
- Length: `長` = long (vs `短` = short)

---

### 🧠 Metadata Tag Template

You can use sound cues to build structured metadata:

```json
{
  "cg": "ev12d",
  "sound_effect": "&sf.SE射精_中_人外_長",
  "tags": [
    "climax",
    "pleasure",
    "ejaculation",
    "internal",
    "monster",
    "long"
  ]
}
```

This supports scene-aware emotional tagging, voice skipping, and sound-cue alignment in training or playback systems.


---

## 📚 Sound Effect Glossary & Tagging Guide

This section serves as a reference for decoding and tagging common sound effects used in `se=` attributes throughout `[evcg]` and related macros.

These sound effects are often structured using embedded Japanese keywords that encode:

- The action or effect (e.g., 射精 = ejaculation)
- The location or method (e.g., 中 = internal, 外 = external)
- The actor or source (e.g., 人外 = monster, 人間 = human)
- Duration or intensity (e.g., 長 = long, 短 = short)

---

### 🧠 Decoding Examples

| SE ID                       | Tags Generated                                           |
|----------------------------|----------------------------------------------------------|
| `SE射精_中_人外_長`         | `ejaculation`, `internal`, `monster`, `long`, `climax`   |
| `SE射精_外_人外_短`         | `ejaculation`, `external`, `monster`, `short`, `climax`  |
| `SE愛撫_乳首`               | `foreplay`, `caress`, `nipples`, `stimulation`           |
| `SE触手挿入_人外`           | `penetration`, `tentacle`, `monster`, `insert`           |
| `SE汁垂れ`                  | `dripping`, `fluid`, `wet`, `post-climax`                |

---

### 🧩 JSON Tag Template

```json
{
  "sound_id": "SE射精_中_人外_長",
  "tags": ["climax", "ejaculation", "internal", "monster", "long"]
}
```

---

You can expand this table as you confirm the definitions from script files or audio mappings. If you upload a file that defines or maps these, we can use it to auto-build this glossary.

---

## 🧾 Active Sound Effects Glossary

This section documents currently active sound effect identifiers from `_sys_seFileDef.ks` and maps each to its filename, translation, and associated tagging metadata.

| SE ID               | Filename   | Translation                      | Tags                                      |
|---------------------|------------|----------------------------------|-------------------------------------------|
| SE触手ループ | seD024 | Tentacle Loop | tentacle |
| SE挿入_触手 | seD017 | Insertion (Tentacle) | tentacle, penetration |
| SE触手伸びる | SE3301 | Tentacle Extending | tentacle |
| SEピストン_人外 | se_sex03b | Piston (Monster) | external, monster, thrust |
| SE射精_中_人外_短 | SE4154 | Ejaculation - Internal - Monster - Short | climax, ejaculation, internal, external, monster, short |
| SE射精_中_人外_長 | SE4154_12 | Ejaculation - Internal - Monster - Long | climax, ejaculation, internal, external, monster, long |
| SE射精_外_人外_短 | SE4163 | Ejaculation - External - Monster - Short | climax, ejaculation, external, monster, short |
| SE射精_外_人外_長 | SE4163_10 | Ejaculation - External - Monster - Long | climax, ejaculation, external, monster, long |
| SE挿入_人 | se_sex01 | Insertion - Human | human, penetration |
| SEピストン_人_遅 | se_sex03a | Piston - Human - Slow | human, thrust |
| SEピストン_人_速 | se_sex03 | Piston - Human - Fast | human, thrust |
| SE射精_中_人_短 | se_sex01b | Ejaculation - Internal - Human - Short | climax, ejaculation, internal, human, short |
| SE射精_中_人_長 | se_sex01c | Ejaculation - Internal - Human - Long | climax, ejaculation, internal, human, long |
| SE射精_外_人_短 | SE4160 | Ejaculation - External - Human - Short | climax, ejaculation, external, human, short |
| SE射精_外_人_長 | SE4162_2 | Ejaculation - External - Human - Long | climax, ejaculation, external, human, long |
| SEハラボテ | seD022 | Pregnant Belly | pregnancy, belly |

---

## 🔔 Standalone Sound Effects

Not all sound effects are embedded within `[evcg]` or macro calls — many scenes use `[se ...]` directly to cue important audio events. These often occur:

- After an event CG is displayed
- Between voiced lines or climax sequences
- To emphasize sensory reactions or physical acts

### 🧠 Example

```ks
[evcg storage="ev08d"][trans_c cross time=500]
[se buf=0 storage="se_sex潮吹き"]
```

In this scene, `ev08d` represents a climax moment, and the sound `se_sex潮吹き` (splashing fluid) plays immediately afterward — reinforcing the emotional and physical context.

---

### 🔍 Tagging Implications

- Treat standalone `[se ...]` calls as cues for emotional state tagging (e.g., climax, stimulation, surprise)
- Match `storage="..."` values to `s_se` filenames or known identifiers
- Integrate these cues when assigning `{emote:}` or `{tts:skip}` to surrounding lines

---



## 🔁 Background Loop Voice Tagging Guide

| Character | Loop ID | Duration | Loudness | Peak dB | Suggested Tags                   | TTS Skip |
|-----------|---------|----------|----------|---------|----------------------------------|----------|
| Akane | akane_loop_0001.ogg | 25.4s | -37.0 dB | -11.9 dB | forced_moan, intensity:medium | yes |
| Akane | akane_loop_0002.ogg | 17.4s | -36.7 dB | -9.4 dB | forced_moan, intensity:medium | yes |
| Akane | akane_loop_0003.ogg | 21.7s | -23.3 dB | -5.9 dB | forced_moan, intensity:high | yes |
| Akane | akane_loop_0004.ogg | 28.5s | -37.8 dB | -4.7 dB | forced_moan, intensity:medium | yes |
| Akane | akane_loop_0005.ogg | 23.1s | -31.4 dB | -7.8 dB | forced_moan, intensity:high | yes |
| Aoi | aoi_loop_0001.ogg | 31.8s | -47.9 dB | -21.1 dB | tense, intensity:low | yes |
| Aoi | aoi_loop_0002.ogg | 32.3s | -44.8 dB | -23.2 dB | tense, intensity:low | yes |
| Aoi | aoi_loop_0003.ogg | 23.2s | -25.1 dB | -4.8 dB | forced_moan, intensity:high | yes |
| Aoi | aoi_loop_0004.ogg | 48.1s | -49.0 dB | -12.3 dB | tense, intensity:low | yes |
| Aoi | aoi_loop_0005.ogg | 40.0s | -42.8 dB | -3.7 dB | tense, intensity:low | yes |
| Mei | mei_loop_0001.ogg | 39.9s | -37.2 dB | -14.9 dB | forced_moan, intensity:medium | yes |
| Mei | mei_loop_0002.ogg | 28.8s | -34.9 dB | -13.9 dB | forced_moan, intensity:medium | yes |
| Mei | mei_loop_0003.ogg | 25.0s | -26.6 dB | -10.5 dB | forced_moan, intensity:high | yes |
| Mei | mei_loop_0004.ogg | 36.5s | -42.8 dB | -10.0 dB | tense, intensity:low | yes |
| Mei | mei_loop_0005.ogg | 31.7s | -36.0 dB | -9.8 dB | forced_moan, intensity:medium | yes |
| Mia | mia_loop_0001.ogg | 23.4s | -40.8 dB | -15.8 dB | tense, intensity:low | yes |
| Mia | mia_loop_0002.ogg | 22.3s | -29.9 dB | -7.1 dB | forced_moan, intensity:high | yes |
| Mia | mia_loop_0003.ogg | 22.6s | -24.5 dB | -8.0 dB | forced_moan, intensity:high | yes |
| Mia | mia_loop_0004.ogg | 26.3s | -45.3 dB | -14.2 dB | tense, intensity:low | yes |
| Mia | mia_loop_0005.ogg | 24.8s | -36.6 dB | -11.1 dB | forced_moan, intensity:medium | yes |


---

## 🎛️ Background Voice Macros (`bgv_*`) and Loop Control

### 🔁 Loop Start

The macros below initiate looped vocal playback for each character:

| Macro         | Character | Typical Use                      |
|---------------|-----------|----------------------------------|
| `bgv_aka`     | Akane     | `[bgv_aka to01]`                 |
| `bgv_aoi`     | Aoi       | `[bgv_aoi to03]`                 |
| `bgv_mia`     | Mia       | `[bgv_mia fella01]`              |
| `bgv_mei`     | Mei       | `[bgv_mei to02]`                 |

These macros internally resolve to sound filenames like `akane_loop_0001.ogg` and play them in a loop using `[playse loop=true]`.

---

### 🛑 Loop Stop

To stop background voice playback, the macro `[bgvstop]` is used with a character argument:

```ks
[bgvstop aoi]
[bgvstop mia]
```

This resolves internally to a conditional macro that maps the name to one of the four predefined stop macros:

| Usage             | Stops     |
|------------------|-----------|
| `[bgvstop aoi]`   | Aoi loop  |
| `[bgvstop mia]`   | Mia loop  |
| `[bgvstop aka]`   | Akane loop|
| `[bgvstop mei]`   | Mei loop  |

---

### 🧠 Tagging Tips

- Looped voice playback should always include `{tts:skip}`
- When stopped, emotional intensity may drop or shift — consider removing `{intensity:high}` if no voiced line follows



### 🔁 Alternate Stop Macros

In addition to `[bgvstop <character>]`, scripts may also directly use:

| Macro                | Stops     |
|----------------------|-----------|
| `[bgvstop_chara01]`  | Akane     |
| `[bgvstop_chara02]`  | Aoi       |
| `[bgvstop_chara03]`  | Mia       |
| `[bgvstop_chara04]`  | Mei       |

These macros have the same effect as `[bgvstop aka]`, etc., and are safe to treat as equivalent in all tagging and playback contexts.
