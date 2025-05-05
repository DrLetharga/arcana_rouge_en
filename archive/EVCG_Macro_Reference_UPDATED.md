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
