
## 📘 Purpose

This guide explains how macro calls in `.ks` script files resolve to character sprite image assets across different character folders. It maps macro arguments to filenames, describes how overlays and effects are layered, and ensures proper visual context when rendering dialogue scenes.

---

## 🧭 Location / Image Layer Mapping

Character position in the scene is determined by the final argument in the macro call. These are shorthand indicators for predefined screen coordinates:

| Code | Position     |
|------|--------------|
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

### 👩‍🦰 Aoi (`ch02`)

```
[std_aoi m ha p2 f03 ce]
```
- `ch02_m_base_a0_p2.png`
- `ch02_m_face_a0_p1_030.png`

### 👩‍🎤 Mia (`ch03`)

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

| Character | Folder         |
|-----------|----------------|
| Akane     | `g_std/ch01`   |
| Aoi       | `g_std/ch02`   |
| Mia       | `g_std/ch03`   |
| Mei       | `g_std/ch04`   |

---

## 🧩 Macro Call Format

Example:
```
[std_aka m mad p1 f12 eki ho ce]
```

**Explanation:**
- `std_aka`: Akane’s macro
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

### Face (Akane, Aoi, Mia)
```
chXX_<size>_face_a<eki>_p1_<faceIndex>.png
```
- `<faceIndex>` = Face ID + blush modifier (e.g., `f07` + `ho` → `071`)

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

---

## 📝 Face ID Definitions

Shared by most girls (Akane, Aoi, Mia, Mei)

| ID | Expression          |
|----|---------------------|
| 01 | Neutral             |
| 02 | Furious             |
| 03 | Sad                 |
| 04 | Happy (Eyes Open)   |
| 05 | Surprised           |
| 06 | Angry               |
| 07 | Confused            |
| 08 | Anxious             |
| 09 | Laughing (Eyes Closed) |
| 10 | Crying Hard         |
| 11 | Serious             |
| 12 | Agony               |
| 13 | Fearful             |
| 14 | Special (varies)    |

Mei 14 = Smirk (Fearless Smile)

---

## 👹 Mob & Wide Character Sprite Mapping

### 🧑‍🦱 Protagonist (`ch05`)
```
ch05_<size>_base.png
```

### 🦍 Kakuen (`ch06`)
```
ch06_<size>_base_a[0-2].png
```
- a0 = Normal, a1 = Aura, a2 = Combustion

### 🐍 Mizuchi (`ch07`)
```
ch07_<size>_base_a[0-2].png
```

### 👺 Shoujou (`ch08`)
```
ch08_<size>_base.png
```

### 🧟 Underling A/B (`ch09`, `ch10`)
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
