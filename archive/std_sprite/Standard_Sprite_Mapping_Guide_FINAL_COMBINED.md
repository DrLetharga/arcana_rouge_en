## 📘 Purpose

## 🎙️ Voice Macro Mapping

## 🧠 Voice & Emotion Tagging Guide

This guide leverages reconstructed sprite context to assign metadata tags for voice model training, using `[vo_*]` macros and surrounding sprite configuration to infer emotional tone.

### 📊 Inference Inputs

Tags like `{emote:pleasure}`, `{emote:fear}`, `{emote:cry}`, `{emote:broken}`, etc. are inferred using:

- **Face ID** (see Face ID Definitions)
- **Blush** (`ho`, `hoho` = heightened arousal or embarrassment)
- **Semen flag** (`eki` = presence of ejaculation → higher emotional intensity)
- **Pose** (`p2`, `p3` = more dramatic)
- **Overlay presence** (e.g., `seieki_add`, hands, ribbons)
- **Character-specific expression context** (e.g., Mei’s `f14` = smirk vs Aoi’s `f14` = tearful)

... (truncated for brevity in preview)

## 📘 Purpose

This guide explains how macro calls in `.ks` script files resolve to character sprite image assets across different character folders. It maps macro arguments to filenames, describes how overlays and effects are layered, and ensures proper visual context when rendering dialogue scenes.

---

## 🗭 Location / Image Layer Mapping

Character position in the scene is determined by the final argument in the macro call. These are shorthand indicators for predefined screen coordinates:

| Code | Position     |
| ---- | ------------ |
| ce   | Center       |
| le   | Left Edge    |
| lc   | Left Center  |
| rc   | Right Center |
| ri   | Right Edge   |

These affect the values used for sprite placement on screen and typically align to specific layer variables such as `sf.layerC`, `sf.layerL`, etc., within the macro definitions.

---

## 👧 Main Girls — Standard Sprite Mapping

### 👩 Akane (`ch01`)

**Macro Example:**
```
[std_aka m mad p1 f12 eki ho ce]
```
**Resolves to:**
- `ch01_m_base_d1_p1.png` (body)
- `ch01_m_face_a1_p1_121.png` (face)

### 🧐 Aoi (`ch02`)
```
[std_aoi m ha p2 f03 ce]
```
- `ch02_m_base_a0_p2.png`
- `ch02_m_face_a0_p1_030.png`

### 🤠 Mia (`ch03`)
```
[std_mia l ma p1 f05 ho ce]
```
- `ch03_l_base_c0_p1.png`
- `ch03_l_face_a0_p1_051.png`

### 👧 Mei (`ch04`)
```
[std_mei m mad p1 f07 eki ho ce]
```
- `ch04_m_base_g1_p1.png` (body)
- `ch04_m_face_g1_p1_071.png` (face)
- `ch04_m_face_a1_seieki_add1.png` (semen overlay)

> The four main heroines have highly detailed sprite construction, with layers for body, face, semen, blush, and additional parts.

---

## 📦 Folder Structure

| Character | Folder       |
| --------- | ------------ |
| Akane     | `g_std/ch01` |
| Aoi       | `g_std/ch02` |
| Mia       | `g_std/ch03` |
| Mei       | `g_std/ch04` |

---

## 🧩 Macro Call Format

Example:
```
[std_aka m mad p1 f12 eki ho ce]
```
**Explanation:**
- `std_aka`: Akane’s macro
- `off`: Optional tag used to hide or suppress the character's sprite on screen. This is occasionally used in scripts for visual transitions or logic triggers without removing macro references.
- `m`: Medium size
- `mad`: Magical Outfit (damaged)
- `p1`: Pose 1
- `f12`: Face ID 12
- `eki`: Covered in semen
- `ho`: Blushing
- `ce`: Center alignment

---

## 📄 Filename Resolution

### Body
```
ch01_<size>_base_<outfitIndex>_p<pose>.png
```
Where:
- `<outfitIndex>` = `<outfitID><eki>`
  - `ma` → `c`, `mad` → `d`, `ha` → `a`
  - `eki` = 1 if present, 0 otherwise

Examples:
- `[std_aka m mad p1 f12 eki ce]` → `ch01_m_base_d1_p1.png`
- `[std_mei m ha p2 f03 ce]` → `ch04_m_base_a0_p2.png`

### Face (Akane, Aoi, Mia)
```
chXX_<size>_face_a<eki>_p1_<faceIndex>.png
```
- Always uses p1
- `<faceIndex>` = Face ID + blush modifier
  - `fXX` → numeric part (e.g., `f07` → `07`)
  - `ho` or `hoho` present → add 1

Examples:
- `f07` with `ho` → `071`
- `f03` with no blush → `030`

### Face (Mei Only)
```
ch04_<size>_face_<prefix><eki>_p<pose>_<faceIndex>.png
```
- Mei uses additional overlays (see below)

---

## 🧰 Aoi Add-ons

Aoi uses additional overlays:
```
g_std/ch02/ch02_<size>_base_<outfitID><eki>_p<pose>_add.png
```
**Examples:**
- `ch02_m_base_a0_p2_add.png`
- `ch02_m_base_d1_p3_add.png`
- `ch02_l_base_b0_p2_add.png`
- `ch02_l_base_c1_p3_add.png`

---

## 🌪️ Mei Overlays

### Semen:
```
ch04_<size>_face_a1_seieki_add<ho>.png
```
- `ho`: 1 if `ho` or `hoho` present, else 0

### Eyepatch:
```
ch04_<size>_face_<outfitID>0_p2_add.png
```
### Hands/Gloves:
```
ch04_<size>_face_<outfitID>0_p2_add2.png
```

**Layering Order:**
1. Semen overlay
2. Hands/Gloves overlay
3. Eyepatch overlay
4. Face
5. Body

**Example:**
```
[std_mei m mad p1 f07 eki ho ce]
```
Resolves to:
- `ch04_m_base_g1_p1.png`
- `ch04_m_face_g1_p1_071.png`
- `ch04_m_face_a1_seieki_add1.png`

---

## 📎 Face ID Definitions

Shared by most girls (Akane, Aoi, Mia, Mei)

| ID  | Expression             |
|-----|------------------------|
| 01  | Neutral                |
| 02  | Furious                |
| 03  | Sad                    |
| 04  | Happy (Eyes Open)      |
| 05  | Surprised              |
| 06  | Angry                  |
| 07  | Confused               |
| 08  | Anxious                |
| 09  | Laughing (Eyes Closed) |
| 10  | Crying Hard            |
| 11  | Serious                |
| 12  | Agony                  |
| 13  | Fearful                |
| 14  | Special (varies)       |

Mei 14 = Smirk (Fearless Smile)

---

## 👹 Mob & Wide Character Sprite Mapping

### 🧍‍♂️ Protagonist (`ch05`)
```
ch05_<size>_base.png
```

### 🦍 Kakuen (`ch06`)
```
ch06_<size>_base_a[0-2].png
```
- `a0` = Normal: calm default pose  
  → `[std_kak m ce]`
- `a1` = Aura: body surrounded by a red aura indicating rage or power-up  
  → `[std_kak m aura ce]`
- `a2` = Combustion: flame or explosive effect triggered during powerful scenes or attacks  
  → `[std_kak m combust ce]`

### 🐍 Mizuchi (`ch07`)
```
ch07_<size>_base_a[0-2].png
```
- `a0` = Normal: neutral serpentine stance  
  → `[std_miz m ce]`
- `a1` = Aura: glowing red markings appear, indicating magical or demonic buildup  
  → `[std_miz m aura ce]`
- `a2` = Combustion: bursting with power, used during intense magical attacks or transformations  
  → `[std_miz m combust ce]`

### 👺 Shoujou (`ch08`)
```
ch08_<size>_base.png
```

### 💀 Underling A/B (`ch09`, `ch10`)
```
ch09_<size>_base.png
ch10_<size>_base.png
```

### 👧 Ai (`ch11`)
```
ch11_<size>_base_d0_p<pose>.png
```

---

## 🌐 Wide / Miscellaneous Characters

From `g_std/w/` folder:
```
w_<size>_<code>.png
```
- Used in `[std_wide ...]` macros
- Typically screen-filling or rare character variants
- Variants exist for emotion/angle as needed
