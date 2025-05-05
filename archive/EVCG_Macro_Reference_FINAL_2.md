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

