## 🧠 Purpose & Tagging Guide

This guide leverages reconstructed sprite context to assign metadata tags for voice model training. It uses `[vo_*]` macros and surrounding sprite configuration to infer emotional tone. These tags support automatic emotional labeling, line filtering for erotic vs neutral content, and the creation of specialized TTS variants such as clean or climax-focused models.

----------

## 🎙️ Voice Macro Mapping

Voice playback is handled in `.ks` scripts using macros like:

```
[vo_aka s="akane_0001"]
```

-   `vo_aka` refers to the character (e.g., Akane)
    
-   `s="..."` specifies the audio filename (without extension)
    
-   Always tied to the line of dialogue that immediately follows
    

These macros are always tied to the line of dialogue that immediately follows them, making them critical anchors for associating spoken lines with specific sprite and emotional configurations.

### 📁 Folder Mapping

**🔗 Voice File Archive:**  
All `.ogg` voice files referenced by `[vo_*]` macros are located in a single flat directory (`source/s_voice`) without subfolders.  
The complete archive is available here:  
`https://mega.nz/folder/KUNgyC6S#TJ5Ea3zYOkpU2l486i02Bw`


| Macro    | Character | Folder           | Example Filename |
| -------- | --------- | ---------------- | ---------------- |
| `vo_aka` | Akane     | `source/s_voice` | `akane_0001.ogg` |
| `vo_aoi` | Aoi       | `source/s_voice` | `aoi_0001.ogg`   |
| `vo_mia` | Mia       | `source/s_voice` | `mia_0001.ogg`   |
| `vo_mei` | Mei       | `source/s_voice` | `mei_0001.ogg`   |

----------

### 📊 Inference Inputs

Tags like `{emote:pleasure}`, `{emote:fear}`, `{emote:cry}`, `{emote:broken}` are inferred from:

-   **Face ID** (see 📌 Face ID Definitions)
    
-   **Blush**: `ho`, `hoho` → heightened arousal or embarrassment
    
-   **Semen flag**: `eki` → ejaculation, usually higher intensity
    
-   **Pose**: `p2`, `p3` → more dramatic
    
-   **Overlay presence**: `seieki_add`, `hands`, `ribbons`
    
-   **Character-specific context** (e.g., Mei's `f14` = smirk, Aoi’s `f14` = tearful)
    

----------

### 🎯 Tagging Outcome Example

**Macro Input:**

```
[std_mei m mad p1 f12 eki ho ce]
[vo_mei s="mei_0153"]
「やっ……そんな、奥まで……」
```

**Inferred Sprite State:**

-   Face ID 12 = Agony
    
-   Blush present (`ho`)
    
-   Semen present (`eki`)
    
-   Mei-specific context: overwhelmed, pained arousal
    

**Recommended Tag:**

```
[vo_mei s="mei_0153" metadata="{emote:agony}{emote:pleasure}{emote:forced_moan}"]
```

----------

## 💡 Training Alignment

Tagging lines with emotional metadata allows for:

-   Automatic emotional label creation for TTS training
    
-   Filtering or separating erotic content from neutral speech
    
-   Creating voice model variants (e.g., clean vs climax)
    

----------

## 🔇 `{tts:skip}` Tag Usage

### ❌ Common `{tts:skip}` Candidates

-   Pure SFX lines: `*pant*`, `*slurp*`, `*gulp*`
    
-   Gagged/muffled moans: `「んぐっ……」`
    
-   Simultaneous exclamations: `「「「ぎゃあぁあぁああああああああああぁあぁぁッ！！」」」`
    
-   Voiceless reactions or distorted speech
    

### ✅ Usage Example

```
[vo_mei s="mei_0042" metadata="{tts:skip}"]
「んぶぅっ、んっ……っ」
```

Prevents Whisper or TTS from modeling a non-verbal expressive line.

----------

## 💡 Combined Tagging

Tags may be combined for hybrid review and filtering purposes:

These tags allow for:

-   Automatic emotional label creation for training TTS
    
-   Filtering or separating erotic content from neutral speech
    
-   Creating variants (e.g., clean model vs climax model)
    

```
[vo_aka s="akane_0349" metadata="{tts:skip}{emote:pleasure}"]
```

-   Excluded from training, but keeps emotional context intact
    

----------

## 🔖 Extended Metadata Support

In addition to `{tts:skip}`, the following fields are supported:

-   `{lang:en}` / `{lang:fr}` / `{lang:zh}`: Tags for foreign language usage
    
-   `{emote:*}`: Emotion inference from sprite states and voice tone
    

You may extend this with additional metadata fields such as `{tts:skip}` for non-verbal sounds or `{lang:}` for foreign phrases (see project glossary).

> See project glossary for full list.

----------

## 🧪 Voice Tagging + Sprite Example

```
[std_aka m mad p1 f12 ho ce]
[vo_aka s="akane_0123"]
「Don’t look at me like that…!」
```

→ Load Akane’s damaged outfit, pose 1, face ID 12 with blush  
→ Play `akane_0123.ogg`  
→ Associate with `{emote:cry}{emote:fear}` or similar

----------

## 📚 Sprite Macro Resolution Overview

This guide explains how macro calls in `.ks` script files resolve to character sprite image assets across different character folders. It maps macro arguments to filenames, describes how overlays and effects are layered, and ensures proper visual context when rendering dialogue scenes.



----------


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

----------

## 📦 Folder Structure


| Character | Folder       |
| --------- | ------------ |
| Akane     | `g_std/ch01` |
| Aoi       | `g_std/ch02` |
| Mia       | `g_std/ch03` |
| Mei       | `g_std/ch04` |

----------

## 👧 Main Girls — Standard Sprite Mapping

### 👩 Akane (`ch01`)

**Macro Example:**

```
[std_aka m mad p1 f12 eki ho ce]
```

**Resolves to:**

-   `ch01_m_base_d1_p1.png` (body)
    
-   `ch01_m_face_a1_p1_121.png` (face)
    

### 🧐 Aoi (`ch02`)

```
[std_aoi m ha p2 f03 ce]
```

-   `ch02_m_base_a0_p2.png`
    
-   `ch02_m_face_a0_p1_030.png`
    

### 🤠 Mia (`ch03`)

```
[std_mia l ma p1 f05 ho ce]
```

-   `ch03_l_base_c0_p1.png`
    
-   `ch03_l_face_a0_p1_051.png`
    

### 👧 Mei (`ch04`)

```
[std_mei m mad p1 f07 eki ho ce]
```

-   `ch04_m_base_g1_p1.png` (body)
    
-   `ch04_m_face_g1_p1_071.png` (face)
    
-   `ch04_m_face_a1_seieki_add1.png` (semen overlay)
    

> The four main heroines have highly detailed sprite construction, with layers for body, face, semen, blush, and additional parts.

----------

## 🧩 Macro Call Format

Example:

```
[std_aka m mad p1 f12 eki ho ce]
```

**Explanation:**

-   `std_aka`: Akane’s macro
    
-   `m`: Medium size
    
-   `mad`: Magical Outfit (damaged)
    
-   `p1`: Pose 1
    
-   `f12`: Face ID 12
    
-   `eki`: Covered in semen
    
-   `ho`: Blushing
    
-   `ce`: Center alignment
    
-   `off`: Optional tag used to hide or suppress the character's sprite on screen. This is occasionally used in scripts for visual transitions or logic triggers without removing macro references.
    

Each of these modifiers impacts the filenames loaded for body, face, and overlays.

----------

## 📄 Filename Resolution

### Body

```
ch01_<size>_base_<outfitIndex>_p<pose>.png
```

Where:

-   `<outfitIndex>` = `<outfitID><eki>`
    
    -   `ma` → `c`, `mad` → `d`, `ha` → `a`
        
    -   `eki` = 1 if present, 0 otherwise
        

Examples:

-   `[std_aka m mad p1 f12 eki ce]` → `ch01_m_base_d1_p1.png`
    
-   `[std_mei m ha p2 f03 ce]` → `ch04_m_base_a0_p2.png`
    

### Face (Akane, Aoi, Mia)

```
chXX_<size>_face_a<eki>_p1_<faceIndex>.png
```

-   Always uses `p1`
    
-   `<faceIndex>` = Face ID + blush modifier
    
    -   `f07` + `ho` → `071`
        
    -   `f03` (no blush) → `030`
        

### Face (Mei Only)

```
ch04_<size>_face_<prefix><eki>_p<pose>_<faceIndex>.png
```

-   Mei uses additional overlays (see below)
    

----------

## 🧰 Aoi Add-ons

Aoi uses additional body overlays that primarily consist of graphical elements like hands, strands of hair, or ribbons that partially obscure her face or body. These are used to subtly shift mood, emphasize emotional vulnerability, or create cinematic framing.

They follow this filename pattern:

```
g_std/ch02/ch02_<size>_base_<outfitID><eki>_p<pose>_add.png
```

Where:

-   `<size>` = character sprite scale (e.g., `m`, `l`)
    
-   `<outfitID>` = base outfit indicator (`a`, `b`, `c`, `d`)
    
-   `<eki>` = `0` or `1` (semen flag)
    
-   `<pose>` = `p2` or `p3`
    

These files are automatically layered on top of the body base based on macro-defined pose and outfit, and are not directly referenced in macro arguments.

**Examples from actual files:**

-   `ch02_l_base_a0_p2_add.png` → hand or hair overlay
    
-   `ch02_l_base_a1_p3_add.png` → partial facial obscuring overlay with semen present
    
-   `ch02_l_base_d1_p3_add.png` → ribbon or atmospheric prop tied to magical outfit
    
-   `ch02_l_base_c0_p2_add.png` → framing overlay at alternate angle
    

These overlays are stylistic rather than expressive, but play a subtle role in communicating shifts in tone, perspective, or restraint.

----------

## 🌪️ Mei Overlays

### 💦 Semen

```
ch04_<size>_face_a1_seieki_add<ho>.png
```

-   `ho`: 1 if `ho` or `hoho` present, else 0
    

### 🩹 Eyepatch

```
ch04_<size>_face_<outfitID>0_p2_add.png
```

### ✋ Hands/Gloves

```
ch04_<size>_face_<outfitID>0_p2_add2.png
```

**Layering Order:**

1.  Semen overlay
    
2.  Hands/Gloves overlay
    
3.  Eyepatch overlay
    
4.  Face
    
5.  Body
    

**Example:**

```
[std_mei m mad p1 f07 eki ho ce]
```

Resolves to:

-   `ch04_m_base_g1_p1.png`
    
-   `ch04_m_face_g1_p1_071.png`
    
-   `ch04_m_face_a1_seieki_add1.png`
    

----------

## 📎 Face ID Definitions

### 👩 Akane (`ch01`)

| ID  | Expression               | Suggested Emotion Tags             |
|-----|--------------------------|------------------------------------|
| 01  | Neutral                  | `{emote:neutral}`                  |
| 02  | Furious                  | `{emote:anger}`                    |
| 03  | Sad                      | `{emote:sad}`                      |
| 04  | Happy (Eyes Open)        | `{emote:happy}`                    |
| 05  | Surprised                | `{emote:surprise}`                 |
| 06  | Angry                    | `{emote:anger}`                    |
| 07  | Confused                 | `{emote:confused}`                 |
| 08  | Anxious                  | `{emote:anxious}`                  |
| 09  | Laughing (Eyes Closed)   | `{emote:laugh}`                    |
| 10  | Crying Hard              | `{emote:cry}`                      |
| 11  | Serious                  | `{emote:serious}`                  |
| 12  | Agony                    | `{emote:agony}`        |
| 13  | Fearful                  | `{emote:fear}`                     |
| 14  | Special (Tearful)        | `{emote:cry}{emote:shame}`         |

### 🧐 Aoi (`ch02`)

| ID  | Expression               | Suggested Emotion Tags             |
|-----|--------------------------|------------------------------------|
| 01  | Neutral                  | `{emote:neutral}`                  |
| 02  | Furious                  | `{emote:anger}`                    |
| 03  | Sad                      | `{emote:sad}`                      |
| 04  | Happy (Eyes Open)        | `{emote:happy}`                    |
| 05  | Surprised                | `{emote:surprise}`                 |
| 06  | Angry                    | `{emote:anger}`                    |
| 07  | Confused                 | `{emote:confused}`                 |
| 08  | Anxious                  | `{emote:anxious}`                  |
| 09  | Laughing (Eyes Closed)   | `{emote:laugh}`                    |
| 10  | Crying Hard              | `{emote:cry}`                      |
| 11  | Serious                  | `{emote:serious}`                  |
| 12  | Agony                    | `{emote:agony}`        |
| 13  | Fearful                  | `{emote:fear}`                     |
| 14  | Special (Tearful)        | `{emote:cry}{emote:shame}`         |

### 🤠 Mia (`ch03`)

| ID  | Expression               | Suggested Emotion Tags             |
|-----|--------------------------|------------------------------------|
| 01  | Neutral                  | `{emote:neutral}`                  |
| 02  | Furious                  | `{emote:anger}`                    |
| 03  | Sad                      | `{emote:sad}`                      |
| 04  | Happy (Eyes Open)        | `{emote:happy}`                    |
| 05  | Surprised                | `{emote:surprise}`                 |
| 06  | Angry                    | `{emote:anger}`                    |
| 07  | Confused                 | `{emote:confused}`                 |
| 08  | Anxious                  | `{emote:anxious}`                  |
| 09  | Laughing (Eyes Closed)   | `{emote:laugh}`                    |
| 10  | Crying Hard              | `{emote:cry}`                      |
| 11  | Serious                  | `{emote:serious}`                  |
| 12  | Agony                    | `{emote:agony}`        |
| 13  | Fearful                  | `{emote:fear}`                     |
| 14  | Special (Tearful)        | `{emote:cry}{emote:shame}`         |

### 👧 Mei (`ch04`)

| ID  | Expression               | Suggested Emotion Tags             |
|-----|--------------------------|------------------------------------|
| 01  | Neutral                  | `{emote:neutral}`                  |
| 02  | Furious                  | `{emote:anger}`                    |
| 03  | Sad                      | `{emote:sad}`                      |
| 04  | Happy (Eyes Open)        | `{emote:happy}`                    |
| 05  | Surprised                | `{emote:surprise}`                 |
| 06  | Angry                    | `{emote:anger}`                    |
| 07  | Confused                 | `{emote:confused}`                 |
| 08  | Anxious                  | `{emote:anxious}`                  |
| 09  | Laughing (Eyes Closed)   | `{emote:laugh}`                    |
| 10  | Crying Hard              | `{emote:cry}`                      |
| 11  | Serious                  | `{emote:serious}`                  |
| 12  | Agony                    | `{emote:agony}`        |
| 13  | Fearful                  | `{emote:fear}`                     |
| 14  | Smirk (Fearless Smile)   | `{emote:mocking}{emote:pleasure}`  |

## 👹 Mob & Wide Character Sprite Mapping

### 👤 Protagonist (`ch05`)

```
ch05_<size>_base.png
```

Macro Example:

```
[std_syu m ce]
```

### 🦍 Kakuen (`ch06`)

```
ch06_<size>_base_a[0-2].png
```

-   `a0` = Normal: calm default pose  
    → `[std_kak m ce]`
    
-   `a1` = Aura: body surrounded by a red aura indicating rage or power-up  
    → `[std_kak m aura ce]`
    
-   `a2` = Combustion: flame or explosive effect triggered during powerful scenes or attacks  
    → `[std_kak m combust ce]`
    

### 🐍 Mizuchi (`ch07`)

```
ch07_<size>_base_a[0-2].png
```

-   `a0` = Normal: neutral serpentine stance  
    → `[std_miz m ce]`
    
-   `a1` = Aura: glowing red markings appear, indicating magical or demonic buildup  
    → `[std_miz m aura ce]`
    
-   `a2` = Combustion: bursting with power, used during intense magical attacks or transformations  
    → `[std_miz m combust ce]`
    

### 👺 Shoujou (`ch08`)

```
ch08_<size>_base.png
```

Macro Example:

```
[std_syo m ce]
```

### 💀 Underling A/B (`ch09`, `ch10`)

```
ch09_<size>_base.png
ch10_<size>_base.png
```

Macro Examples:

```
[std_zaA m lc]
[std_zaB l rc]
```

### 👧 Ai (`ch11`)

```
ch11_<size>_base_d0_p<pose>.png
```

Macro Example:

```
[std_ai m p1 ce]
```

## 🖼️ Event CG & Transition Mapping

Some scenes, such as those in `arcana001.ks`, do not use traditional character sprite macros. Instead, they rely on full-screen event CGs and visual transitions (panning, zooming, fades) to convey character focus and emotional shifts.

This section outlines how to interpret these sequences for voice tagging and emotional inference.

---

### 🗂️ CG Naming Conventions

Event CGs are typically named using the following patterns:

| Filename Example      | Meaning                                     |
|-----------------------|---------------------------------------------|
| `ev01a.png`            | Base CG for scene 1                         |
| `ev02a.png`, `ev02b.png` | Sequence variants or progression frames     |
| `ev05_msk.png`        | Mosaic/censorship mask layer (approximate)  |

Frames are often displayed in timed succession to simulate motion or emotional beats.

---

### 🎭 Character Layout Reference

Characters can be identified by consistent placement across CGs. Example layout for key girls:

| Character | Position     | Notes                       |
|----------|--------------|-----------------------------|
| Akane    | Center top   | Usually red outfit          |
| Mia      | Lower left   | Typically yellow tones      |
| Aoi      | Lower right  | Violet, often teary-eyed    |

Use known positions to infer speaker focus and match voice lines to visuals.

---

### 🎥 Transition Cues

Panning or focus shifts are indicated by:

- `[pan]`, `[move]`, `[camera]`, or animation macro tags
- Sequences of `@wait`, `@bg` (background) changes, or overlays
- Sudden cropping or zoom adjustments across image variants

These transitions **indicate emotional or speaker shifts**. Even if sprite macros aren’t present, tracking these can help assign correct `{emote:}` tags.

---

### 🎙️ Voice Tagging Without Sprites

Use visual focus, line content, and known CG layout to infer emotion:

**Example:**

```ks
@bg "ev05"
@wait 500
@bg "ev05b"
[vo_mia s="mia_0021"]
「Hnnn... It’s so deep...!」
```

**Inferred Context:**

- Zoom-in from `ev05` to `ev05b` centers on Mia’s expression
- Line is voiced by Mia
- Visual and vocal suggest heightened arousal or overwhelmed emotion

**Suggested Tag:**

```ks
[vo_mia s="mia_0021" metadata="{emote:cry}{emote:pleasure}{emote:climax}"]
```

---

### 🛠️ Best Practices

- If multiple characters are visible, tag based on visual focus and line content
- If CG zooms or pans during a line, consider adjusting the tag based on the **destination frame**
- Refer to CG archive for positioning consistency across scenes

> Event CG metadata may eventually be auto-tagged by associating `evXX.png` → layout map → speaker/emotion template.

---

### 🧭 Mapping Reference (WIP)

| CG Filename | Characters Present | Notes / Emotional Highlights         |
|-------------|--------------------|--------------------------------------|
| `ev05.png`  | Akane, Mia, Aoi    | Group scene, neutral or rising tension |
| `ev05b.png` | Mia (zoomed)       | Arousal, embarrassment, focus shift   |
| `ev07.png`  | Akane (solo)       | Anger, fear, or climax cues           |
| `ev08a.png` | Akane + tentacles  | High distress, potential `{emote:cry}{emote:broken}` |

This table should grow as you catalog more CGs for automatic tagging.

---
