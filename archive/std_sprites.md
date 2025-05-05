📘 Purpose

This guide explains how macro calls in .ks script files resolve to character sprite image assets across different character folders. It maps macro arguments to filenames, describes how overlays and effects are layered, and ensures proper visual context when rendering dialogue scenes.

🧭 Location / Image Layer Mapping

Character position in the scene is determined by the final argument in the macro call. These are shorthand indicators for predefined screen coordinates.

Code

Position

ce

Center

le

Left Edge

lc

Left Center

rc

Right Center

ri

Right Edge

These affect the values used for sprite placement on screen and typically align to specific layer variables such as sf.layerC, sf.layerL, etc., within the macro definitions.

👧 Main Girls — Standard Sprite Mapping

👩 Akane (ch01)

Macro Example:

[std_aka m mad p1 f12 eki ho ce] → ch01_m_base_d1_p1.png (body)
                             → ch01_m_face_a1_p1_121.png (face)

👩‍🦰 Aoi (ch02)

Macro Example:

[std_aoi m ha p2 f03 ce] → ch02_m_base_a0_p2.png (body)
                          → ch02_m_face_a0_p1_030.png (face)

👩‍🎤 Mia (ch03)

Macro Example:

[std_mia l ma p1 f05 ho ce] → ch03_l_base_c0_p1.png (body)
                              → ch03_l_face_a0_p1_051.png (face)

👧 Mei (ch04)

Macro Example:

[std_mei m mad p1 f07 eki ho ce]
→ ch04_m_base_g1_p1.png (body)
→ ch04_m_face_g1_p1_071.png (face)
→ ch04_m_face_a1_seieki_add1.png (semen overlay)

The four main heroines (Akane, Aoi, Mia, and Mei) have highly detailed sprite construction, with layers for body, face, semen, blush, and additional parts.

📦 Folder Structure

Akane: g_std/ch01

Aoi:   g_std/ch02

Mia:   g_std/ch03

Mei:   g_std/ch04

🧩 Macro Call Format

[std_aka m mad p1 f12 eki ho ce]

💡 Interpretation

std_aka: Akane’s macro

off: Optional tag used to hide or suppress the character's sprite on screen. This is occasionally used in scripts for visual transitions or logic triggers without removing macro references.

m: Medium size

mad: Magical Outfit (damaged)

p1: Pose 1

f12: Face ID 12

eki: Covered in semen

ho: Blushing

ce: Center alignment

📄 Filename Resolution

Body

ch01_<size>_base_<outfitIndex>_p<pose>.png

<outfitIndex> is determined by two components:

🧩 <outfitIndex> Breakdown

<outfitIndex> = <outfitID><eki>

Where:

<outfitID> is a single character representing the outfit (see tables below)

e.g., ma → c, mad → d, ha → a

<eki> is:

1 if eki (semen) is present

0 if not present

Examples:

[std_aka m mad p1 f12 eki ce]  → ch01_m_base_d1_p1.png
[std_mei m ha p2 f03 ce]       → ch04_m_base_a0_p2.png

Face (Akane, Aoi, Mia)

chXX_<size>_face_a<eki>_p1_<faceIndex>.png

Always uses p1

<faceIndex> is composed of:

fXX macro face ID (e.g., f07 → 07)

Blush modifier (ho or hoho) = 1, none = 0

** = **

<faceID> = numeric part of the fXX macro (e.g., 07)

<blush> = 1 if ho or hoho is present, 0 otherwise

Examples:

f07 with ho → 071

f03 with no blush → 030

Face (Mei only)

ch04_<size>_face_<prefix><eki>_p<pose>_<faceIndex>.png

Mei's face files include overlay components per outfit prefix (a–k)

Aoi Add-ons

Aoi has conditional facial overlays that render additional details such as sweat, drool, or visual flourishes depending on outfit and pose.

g_std/ch02_<size>_base_<outfitID><eki>_p<pose>_add.png

<outfitID> corresponds to the outfit base code (e.g., a, b, c, d)

<eki> is 0 or 1 depending on semen flag

Primarily observed for p2 and p3

These overlays are positioned above the body and face layers, but below any explicit semen overlays if present.

Aoi Add-on Examples

Macro Call

Filename

[std_aoi m ha p2 f03 ce]

g_std/ch02/ch02_m_base_a0_p2_add.png

[std_aoi m mad p3 f10 eki ho ce]

g_std/ch02/ch02_m_base_d1_p3_add.png

[std_aoi l se p2 f04 ce]

g_std/ch02/ch02_l_base_b0_p2_add.png

[std_aoi l ma p3 f06 eki ce]

g_std/ch02/ch02_l_base_c1_p3_add.png

Mei Semen Overlays

Mei's semen overlays appear as transparent foreground layers that visually enhance her facial expression sprite when eki is specified. These overlays are not tied to specific outfits, but instead always use the prefix a1 to indicate the semen layer.

ch04_<size>_face_a1_seieki_add<ho>.png

<size>: Matches character sprite size (s, m, l, or x)

<ho>: 0 = no blush, 1 = if ho or hoho present

Example

[std_mei m mad p1 f07 eki ho ce] ; Mei with damaged magical outfit, pose 1, aroused face, semen and blush, center-aligned

Resolves to:

Body:   ch04_m_base_g1_p1.png
Face:   ch04_m_face_g1_p1_071.png
Overlay: ch04_m_face_a1_seieki_add1.png

Mei Eyepatch and Hand/Glove Overlays

Eyepatch:

ch04_<size>_face_<outfitID>0_p2_add.png

Hands/Gloves:

ch04_<size>_face_<outfitID>0_p2_add2.png

These follow the p2 pose for layering alignment

Eyepatch (_add.png) renders beneath hand overlays

Hands/Gloves (_add2.png) render beneath semen overlay, but above eyepatch

Recommended layering order:

Semen overlay (seieki_add<ho>.png)

Hands/Gloves overlay (_add2.png)

Eyepatch overlay (_add.png)

Face

Body

🧾 Face ID Definitions

Akane (ch01)

01 = Neutral
02 = Furious
03 = Sad
04 = Happy (Eyes Open)
05 = Surprised
06 = Angry
07 = Confused
08 = Anxious
09 = Laughing (Eyes Closed)
10 = Crying Hard
11 = Serious
12 = Agony
13 = Fearful
14 = Special (Tearful)

Aoi (ch02)

01 = Neutral
02 = Furious
03 = Sad
04 = Happy (Eyes Open)
05 = Surprised
06 = Angry
07 = Confused
08 = Anxious
09 = Laughing (Eyes Closed)
10 = Crying Hard
11 = Serious
12 = Agony
13 = Fearful
14 = Special (Tearful) [Unused]

Mia (ch03)

01 = Neutral
02 = Furious
03 = Sad
04 = Happy (Eyes Open)
05 = Surprised
06 = Angry
07 = Confused
08 = Anxious
09 = Laughing (Eyes Closed)
10 = Crying Hard
11 = Serious
12 = Agony
13 = Fearful
14 = Special (Tearful)

Mei (ch04)

01 = Neutral
02 = Furious
03 = Sad
04 = Happy (Eyes Open)
05 = Surprised
06 = Angry
07 = Confused
08 = Anxious
09 = Laughing (Eyes Closed)
10 = Crying Hard
11 = Serious
12 = Agony
13 = Fearful
14 = Smirk (Fearless Smile)



👹 Mob & Wide Character Sprite Mapping

🦍 Kakuen (ch06)

ch06_<size>_base_a[0–2].png

a0 = Normal

a1 = Aura

a2 = Combustion

Macro Example:

[std_kak l ce] → ch06_l_base_a0.png

🐍 Mizuchi (ch07)

ch07_<size>_base_a[0–2].png

a0 = Normal

a1 = Aura

a2 = Combustion

Macro Example:

[std_miz m ce] → ch07_m_base_a0.png

👺 Shoujou (ch08)

ch08_<size>_base.png

Used for static poses in ritual or observation scenes.

Macro Example:

[std_syo l ce] → ch08_l_base.png

🧟 Underling A (ch09)

ch09_<size>_base.png

Macro Example:

[std_zaA m lc] → ch09_m_base.png

🧟 Underling B (ch10)

ch10_<size>_base.png

Macro Example:

[std_zaB l rc] → ch10_l_base.png

👧 Ai (ch11)

ch11_<size>_base_d0_p<pose>.png

Includes pose-specific renders (e.g., sitting, restrained)

Macro Example:

[std_ai m p1 ce] → ch11_m_base_d0_p1.png

🧑‍🦱 Protagonist / Hero (ch05)

ch05_<size>_base.png

Always a single sprite per size.

Macro Example:

[std_syu m ce] → ch05_m_base.png

🌐 Wide / Miscellaneous (w/ folder)

The g_std/w folder stores additional characters and rare side sprites using the macro name wide.

w_<size>_<code>.png

Often called with [std_wide ...] macros

Used for unusual layouts or screen-filling characters

Variants exist for emotion/angle as needed

