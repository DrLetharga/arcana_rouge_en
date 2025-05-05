# 🔧 PowerShell Tool Plan: Sprite Macro Image Generator

# 📌 Purpose:
# Parses a [std_*] macro string and generates a composited preview image
# using the correct body, face, and overlay layers for each character
# involved, on top of a defined background.

# 🧩 Input:
# - A single [std_*] macro line (or batch of lines)
# - Optional background CG or sprite backdrop macro

# 🎨 Output:
# - A single composited PNG preview per macro string
# - Layers all resolved sprites in correct screen positions
# - Allows fast visual verification outside the game

# 🗂️ Dependencies:
# - ImageMagick (for compositing)
# - Local folder structure matching g_std, g_bg, etc.

# 🧪 Example:
# Input:
#   [std_mei m mad p1 f12 eki ho ce]
# Output:
#   Composite of:
#     - ch04_m_base_g1_p1.png
#     - ch04_m_face_g1_p1_121.png
#     - ch04_m_face_a1_seieki_add1.png
#     - All centered on 1280x720 canvas with optional bg

# 🗃️ Optional Batch Mode:
# - Accept list of macros from file
# - Generate preview for each line

# ➕ Future Expansion:
# - Add support for multi-character scenes
# - Annotate output with face ID and emotion tags
# - Integrate into TTS metadata flow

[CmdletBinding()]
param ()

$ErrorActionPreference = 'Stop'

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$outputPath = Join-Path $scriptRoot "\output"

$scWidth = 1280
$scHeight = 720

$sizeMap = @{
    "aka" = @{
        "s" = @{ w = 420; h = 900 }
        "m" = @{ w = 560; h = 1200 }
        "l" = @{ w = 840; h = 1800 }
        "x" = @{ w = 1400; h = 3000 }
    }
    "aoi" = @{
        "s" = @{ w = 600; h = 960 }
        "m" = @{ w = 800; h = 1200 }
        "l" = @{ w = 1200; h = 1920 }
        "x" = @{ w = 2000; h = 3200 }
    }
    "mia" = @{
        "s" = @{ w = 840; h = 990 }
        "m" = @{ w = 1120; h = 1320 }
        "l" = @{ w = 1680; h = 1980 }
        "x" = @{ w = 2800; h = 3300 }
    }
    "mei" = @{ 
        "s" = @{ w = 900; h = 960 }
        "m" = @{ w = 1200; h = 1280 }
        "l" = @{ w = 1800; h = 1920 }
        "x" = @{ w = 3000; h = 3200 }
    }
    "syu" = @{ 
        "s" = @{ w = 366; h = 1127 }
        "m" = @{ w = 488; h = 1503 }
        "l" = @{ w = 731; h = 2254 }
        "x" = @{ w = 1219; h = 3757 }
    }
    "kak" = @{ 
        "s" = @{ w = 1050; h = 1350 }
        "m" = @{ w = 1400; h = 1800 }
        "l" = @{ w = 2100; h = 2700 }
        "x" = @{ w = 3500; h = 4500 }
    }
    "miz" = @{ 
        "s" = @{ w = 868; h = 1228 }
        "m" = @{ w = 1158; h = 1637 }
        "l" = @{ w = 1736; h = 2456 }
        "x" = @{ w = 2894; h = 4093 }
    }
    "syo" = @{ 
        "s" = @{ w = 600; h = 900 }
        "m" = @{ w = 800; h = 1200 }
        "l" = @{ w = 1200; h = 1800 }
        "x" = @{ w = 2000; h = 3000 }
    }
    "zaA" = @{ 
        "s" = @{ w = 868; h = 1127 }
        "m" = @{ w = 1158; h = 1502 }
        "l" = @{ w = 1736; h = 2253 }
        "x" = @{ w = 2894; h = 3755 }
    }
    "zaB" = @{ 
        "s" = @{ w = 868; h = 1127 }
        "m" = @{ w = 1158; h = 1502 }
        "l" = @{ w = 1736; h = 2253 }
        "x" = @{ w = 2894; h = 3755 }
    }
    "ai" = @{ 
        "s" = @{ w = 900; h = 960 }
        "m" = @{ w = 1200; h = 1280 }
        "l" = @{ w = 1800; h = 1920 }
        "x" = @{ w = 3000; h = 3200 }
    }
}

$ch01_s_y = 80 + 50
$ch01_m_y = 50 + 50
$ch01_l_y = 10 + 50
$ch01_x_y = -100 + 50

$ch01_s_ce = ($scWidth/2) - (($sizeMap["aka"]["s"]).w/2) + 0
$ch01_s_le = ($ch01_s_ce - ($sizeMap["aka"]["s"]).w) + 0
$ch01_s_lc = ($ch01_s_ce - (($sizeMap["aka"]["s"]).w/2)) + 0
$ch01_s_rc = ($ch01_s_ce + (($sizeMap["aka"]["s"]).w/2)) + 0
$ch01_s_ri = ($ch01_s_ce + ($sizeMap["aka"]["s"]).w) + 0

$ch01_m_ce = ($scWidth/2) - (($sizeMap["aka"]["m"]).w/2) + 0
$ch01_m_le = ($ch01_m_ce - ($sizeMap["aka"]["m"]).w) + 150
$ch01_m_lc = ($ch01_m_ce - (($sizeMap["aka"]["m"]).w/2)) + 50
$ch01_m_rc = ($ch01_m_ce + (($sizeMap["aka"]["m"]).w/2)) - 50
$ch01_m_ri = ($ch01_m_ce + ($sizeMap["aka"]["m"]).w) - 150

$ch01_l_ce = ($scWidth/2) - (($sizeMap["aka"]["l"]).w/2) + 0
$ch01_l_le = ($ch01_l_ce - (($sizeMap["aka"]["l"]).w/2)) + 120
$ch01_l_lc = ($ch01_l_ce - (($sizeMap["aka"]["l"]).w/2)) + 120
$ch01_l_rc = ($ch01_l_ce + (($sizeMap["aka"]["l"]).w/2)) - 120
$ch01_l_ri = ($ch01_l_ce + (($sizeMap["aka"]["l"]).w/2)) - 120

$ch01_x_ce = ($scWidth/2) - (($sizeMap["aka"]["x"]).w/2) + 0
$ch01_x_le = ($ch01_x_ce - (($sizeMap["aka"]["x"]).w/2)) + 360
$ch01_x_lc = ($ch01_x_ce - (($sizeMap["aka"]["x"]).w/2)) + 360
$ch01_x_rc = ($ch01_x_ce + (($sizeMap["aka"]["x"]).w/2)) - 360
$ch01_x_ri = ($ch01_x_ce + (($sizeMap["aka"]["x"]).w/2)) - 360

$ch02_s_g = 80
$ch02_m_g = $ch02_s_g + 25
$ch02_l_g = $ch02_s_g + 67
$ch02_x_g = $ch02_s_g + 140

$ch02_s_y = $ch01_s_y - $ch02_s_g
$ch02_m_y = $ch01_m_y - $ch02_m_g
$ch02_l_y = $ch01_l_y - $ch02_l_g
$ch02_x_y = $ch01_x_y - $ch02_x_g

$ch02_s_ce = ($scWidth/2) - (($sizeMap["aoi"]["s"]).w/2) + 0
$ch02_s_le = ($ch02_s_ce - ($sizeMap["aoi"]["s"]).w) + 170
$ch02_s_lc = ($ch02_s_ce - (($sizeMap["aoi"]["s"]).w/2)) + 90
$ch02_s_rc = ($ch02_s_ce + (($sizeMap["aoi"]["s"]).w/2)) - 90
$ch02_s_ri = ($ch02_s_ce + ($sizeMap["aoi"]["s"]).w) -170

$ch02_m_ce = ($scWidth/2) - (($sizeMap["aoi"]["m"]).w/2) + 0
$ch02_m_le = ($ch02_m_ce - ($sizeMap["aoi"]["m"]).w) + 380
$ch02_m_lc = ($ch02_m_ce - (($sizeMap["aoi"]["m"]).w/2)) + 180
$ch02_m_rc = ($ch02_m_ce + (($sizeMap["aoi"]["m"]).w/2)) - 180
$ch02_m_ri = ($ch02_m_ce + ($sizeMap["aoi"]["m"]).w) - 380

$ch02_l_ce = ($scWidth/2) - (($sizeMap["aoi"]["l"]).w/2) + 0
$ch02_l_le = ($ch02_l_ce - (($sizeMap["aoi"]["l"]).w/2)) + 300
$ch02_l_lc = ($ch02_l_ce - (($sizeMap["aoi"]["l"]).w/2)) + 300
$ch02_l_rc = ($ch02_l_ce + (($sizeMap["aoi"]["l"]).w/2)) - 300
$ch02_l_ri = ($ch02_l_ce + (($sizeMap["aoi"]["l"]).w/2)) - 300

$ch02_x_ce = ($scWidth/2) - (($sizeMap["aoi"]["x"]).w/2) + 0
$ch02_x_le = ($ch02_x_ce - (($sizeMap["aoi"]["x"]).w/2)) + 650
$ch02_x_lc = ($ch02_x_ce - (($sizeMap["aoi"]["x"]).w/2)) + 650
$ch02_x_rc = ($ch02_x_ce + (($sizeMap["aoi"]["x"]).w/2)) - 650
$ch02_x_ri = ($ch02_x_ce + (($sizeMap["aoi"]["x"]).w/2)) - 650

$ch03_s_g = 90
$ch03_m_g = $ch03_s_g + 22
$ch03_l_g = $ch03_s_g + 98
$ch03_x_g = $ch03_s_g + 240

$ch03_s_y = $ch01_s_y - $ch03_s_g
$ch03_m_y = $ch01_m_y - $ch03_m_g
$ch03_l_y = $ch01_l_y - $ch03_l_g
$ch03_x_y = $ch01_x_y - $ch03_x_g

$ch03_s_ce = ($scWidth/2) - (($sizeMap["mia"]["s"]).w/2) + 0
$ch03_s_le = ($ch03_s_ce - ($sizeMap["mia"]["s"]).w) + 420
$ch03_s_lc = ($ch03_s_ce - (($sizeMap["mia"]["s"]).w/2)) + 210
$ch03_s_rc = ($ch03_s_ce + (($sizeMap["mia"]["s"]).w/2)) - 210
$ch03_s_ri = ($ch03_s_ce + ($sizeMap["mia"]["s"]).w) - 420

$ch03_m_ce = ($scWidth/2) - (($sizeMap["mia"]["m"]).w/2) + 0
$ch03_m_le = ($ch03_m_ce - ($sizeMap["mia"]["m"]).w) + 700
$ch03_m_lc = ($ch03_m_ce - (($sizeMap["mia"]["m"]).w/2)) + 330
$ch03_m_rc = ($ch03_m_ce + (($sizeMap["mia"]["m"]).w/2)) - 330
$ch03_m_ri = ($ch03_m_ce + ($sizeMap["mia"]["m"]).w) - 700

$ch03_l_ce = ($scWidth/2) - (($sizeMap["mia"]["l"]).w/2) + 0
$ch03_l_le = ($ch03_l_ce - (($sizeMap["mia"]["l"]).w/2)) + 550
$ch03_l_lc = ($ch03_l_ce - (($sizeMap["mia"]["l"]).w/2)) + 550
$ch03_l_rc = ($ch03_l_ce + (($sizeMap["mia"]["l"]).w/2)) - 550
$ch03_l_ri = ($ch03_l_ce + (($sizeMap["mia"]["l"]).w/2)) - 550

$ch03_x_ce = ($scWidth/2) - (($sizeMap["mia"]["x"]).w/2) + 0
$ch03_x_le = ($ch03_x_ce - (($sizeMap["mia"]["x"]).w/2)) + 1050
$ch03_x_lc = ($ch03_x_ce - (($sizeMap["mia"]["x"]).w/2)) + 1050
$ch03_x_rc = ($ch03_x_ce + (($sizeMap["mia"]["x"]).w/2)) - 1050
$ch03_x_ri = ($ch03_x_ce + (($sizeMap["mia"]["x"]).w/2)) - 1050

$ch04_s_g = 85
$ch04_m_g = $ch04_s_g + 25
$ch04_l_g = $ch04_s_g + 80
$ch04_x_g = $ch04_s_g + 180

$ch04_s_y = $ch01_s_y - $ch04_s_g
$ch04_m_y = $ch01_m_y - $ch04_m_g
$ch04_l_y = $ch01_l_y - $ch04_l_g
$ch04_x_y = $ch01_x_y - $ch04_x_g

$ch04_s_ce = ($scWidth/2) - (($sizeMap["mei"]["s"]).w/2) - 9
$ch04_s_le = ($ch04_s_ce - ($sizeMap["mei"]["s"]).w) + 480
$ch04_s_lc = ($ch04_s_ce - (($sizeMap["mei"]["s"]).w/2)) + 240
$ch04_s_rc = ($ch04_s_ce + (($sizeMap["mei"]["s"]).w/2)) - 240
$ch04_s_ri = ($ch04_s_ce + ($sizeMap["mei"]["s"]).w) - 480

$ch04_m_ce = ($scWidth/2) - (($sizeMap["mei"]["m"]).w/2) - 12
$ch04_m_le = ($ch04_m_ce - ($sizeMap["mei"]["m"]).w) + 800
$ch04_m_lc = ($ch04_m_ce - (($sizeMap["mei"]["m"]).w/2)) + 390
$ch04_m_rc = ($ch04_m_ce + (($sizeMap["mei"]["m"]).w/2)) - 350
$ch04_m_ri = ($ch04_m_ce + ($sizeMap["mei"]["m"]).w) - 780

$ch04_l_ce = ($scWidth/2) - (($sizeMap["mei"]["l"]).w/2) - 18
$ch04_l_le = ($ch04_l_ce - (($sizeMap["mei"]["l"]).w/2)) + 600
$ch04_l_lc = ($ch04_l_ce - (($sizeMap["mei"]["l"]).w/2)) + 600
$ch04_l_rc = ($ch04_l_ce + (($sizeMap["mei"]["l"]).w/2)) - 600
$ch04_l_ri = ($ch04_l_ce + (($sizeMap["mei"]["l"]).w/2)) - 600

$ch04_x_ce = ($scWidth/2) - (($sizeMap["mei"]["x"]).w/2) - 30
$ch04_x_le = ($ch04_x_ce - (($sizeMap["mei"]["x"]).w/2)) + 1150
$ch04_x_lc = ($ch04_x_ce - (($sizeMap["mei"]["x"]).w/2)) + 1150
$ch04_x_rc = ($ch04_x_ce + (($sizeMap["mei"]["x"]).w/2)) - 1150
$ch04_x_ri = ($ch04_x_ce + (($sizeMap["mei"]["x"]).w/2)) - 1150

$ch05_s_y = 10
$ch05_m_y = 10
$ch05_l_y = 10
$ch05_x_y = -100

$ch05_s_ce = ($scWidth/2) - (($sizeMap["syu"]["s"]).w/2) + 0
$ch05_s_le = ($ch05_s_ce - ($sizeMap["syu"]["s"]).w) - 50
$ch05_s_lc = ($ch05_s_ce - (($sizeMap["syu"]["s"]).w/2)) - 0
$ch05_s_rc = ($ch05_s_ce + (($sizeMap["syu"]["s"]).w/2)) + 0
$ch05_s_ri = ($ch05_s_ce + ($sizeMap["syu"]["s"]).w) + 50

$ch05_m_ce = ($scWidth/2) - (($sizeMap["syu"]["m"]).w/2) + 0
$ch05_m_le = ($ch05_m_ce - ($sizeMap["syu"]["m"]).w) + 80
$ch05_m_lc = ($ch05_m_ce - (($sizeMap["syu"]["m"]).w/2)) + 20
$ch05_m_rc = ($ch05_m_ce + (($sizeMap["syu"]["m"]).w/2)) - 20
$ch05_m_ri = ($ch05_m_ce + ($sizeMap["syu"]["m"]).w) - 80

$ch05_l_ce = ($scWidth/2) - (($sizeMap["syu"]["l"]).w/2) + 0
$ch05_l_le = ($ch05_l_ce - (($sizeMap["syu"]["l"]).w/2)) + 70
$ch05_l_lc = ($ch05_l_ce - (($sizeMap["syu"]["l"]).w/2)) + 70
$ch05_l_rc = ($ch05_l_ce + (($sizeMap["syu"]["l"]).w/2)) - 70
$ch05_l_ri = ($ch05_l_ce + (($sizeMap["syu"]["l"]).w/2)) - 70

$ch05_x_ce = ($scWidth/2) - (($sizeMap["syu"]["x"]).w/2) + 0
$ch05_x_le = ($ch05_x_ce - (($sizeMap["syu"]["x"]).w/2)) + 250
$ch05_x_lc = ($ch05_x_ce - (($sizeMap["syu"]["x"]).w/2)) + 250
$ch05_x_rc = ($ch05_x_ce + (($sizeMap["syu"]["x"]).w/2)) - 250
$ch05_x_ri = ($ch05_x_ce + (($sizeMap["syu"]["x"]).w/2)) - 250

$ch06_s_y = 10
$ch06_m_y = 10
$ch06_l_y = 10
$ch06_x_y = -100

$ch06_s_ce = ($scWidth/2) - (($sizeMap["kak"]["s"]).w/2) + 50
$ch06_s_le = ($ch06_s_ce - ($sizeMap["kak"]["s"]).w) + 600
$ch06_s_lc = ($ch06_s_ce - (($sizeMap["kak"]["s"]).w/2)) + 300
$ch06_s_rc = ($ch06_s_ce + (($sizeMap["kak"]["s"]).w/2)) - 300
$ch06_s_ri = ($ch06_s_ce + ($sizeMap["kak"]["s"]).w) - 600

$ch06_m_ce = ($scWidth/2) - (($sizeMap["kak"]["m"]).w/2) + 65
$ch06_m_le = ($ch06_m_ce - ($sizeMap["kak"]["m"]).w) + 1000
$ch06_m_lc = ($ch06_m_ce - (($sizeMap["kak"]["m"]).w/2)) + 500
$ch06_m_rc = ($ch06_m_ce + (($sizeMap["kak"]["m"]).w/2)) - 500
$ch06_m_ri = ($ch06_m_ce + ($sizeMap["kak"]["m"]).w) - 1000

$ch06_l_ce = ($scWidth/2) - (($sizeMap["kak"]["l"]).w/2) + 100
$ch06_l_le = ($ch06_l_ce - (($sizeMap["kak"]["l"]).w/2)) + 700
$ch06_l_lc = ($ch06_l_ce - (($sizeMap["kak"]["l"]).w/2)) + 700
$ch06_l_rc = ($ch06_l_ce + (($sizeMap["kak"]["l"]).w/2)) - 700
$ch06_l_ri = ($ch06_l_ce + (($sizeMap["kak"]["l"]).w/2)) - 700

$ch06_x_ce = ($scWidth/2) - (($sizeMap["kak"]["x"]).w/2) + 180
$ch06_x_le = ($ch06_x_ce - (($sizeMap["kak"]["x"]).w/2)) + 1350
$ch06_x_lc = ($ch06_x_ce - (($sizeMap["kak"]["x"]).w/2)) + 1350
$ch06_x_rc = ($ch06_x_ce + (($sizeMap["kak"]["x"]).w/2)) - 1350
$ch06_x_ri = ($ch06_x_ce + (($sizeMap["kak"]["x"]).w/2)) - 1350

$ch07_s_y = -50
$ch07_m_y = -100
$ch07_l_y = -200
$ch07_x_y = -400

$ch07_s_ce = ($scWidth/2) - (($sizeMap["miz"]["s"]).w/2) + 0
$ch07_s_le = ($ch07_s_ce - ($sizeMap["miz"]["s"]).w) + 400
$ch07_s_lc = ($ch07_s_ce - (($sizeMap["miz"]["s"]).w/2)) + 200
$ch07_s_rc = ($ch07_s_ce + (($sizeMap["miz"]["s"]).w/2)) - 200
$ch07_s_ri = ($ch07_s_ce + ($sizeMap["miz"]["s"]).w) - 400

$ch07_m_ce = ($scWidth/2) - (($sizeMap["miz"]["m"]).w/2) + 0
$ch07_m_le = ($ch07_m_ce - ($sizeMap["miz"]["m"]).w) + 700
$ch07_m_lc = ($ch07_m_ce - (($sizeMap["miz"]["m"]).w/2)) + 350
$ch07_m_rc = ($ch07_m_ce + (($sizeMap["miz"]["m"]).w/2)) - 350
$ch07_m_ri = ($ch07_m_ce + ($sizeMap["miz"]["m"]).w) - 700

$ch07_l_ce = ($scWidth/2) - (($sizeMap["miz"]["l"]).w/2) + 0
$ch07_l_le = ($ch07_l_ce - (($sizeMap["miz"]["l"]).w/2)) + 500
$ch07_l_lc = ($ch07_l_ce - (($sizeMap["miz"]["l"]).w/2)) + 500
$ch07_l_rc = ($ch07_l_ce + (($sizeMap["miz"]["l"]).w/2)) - 500
$ch07_l_ri = ($ch07_l_ce + (($sizeMap["miz"]["l"]).w/2)) - 500

$ch07_x_ce = ($scWidth/2) - (($sizeMap["miz"]["x"]).w/2) + 0
$ch07_x_le = ($ch07_x_ce - (($sizeMap["miz"]["x"]).w/2)) + 1100
$ch07_x_lc = ($ch07_x_ce - (($sizeMap["miz"]["x"]).w/2)) + 1100
$ch07_x_rc = ($ch07_x_ce + (($sizeMap["miz"]["x"]).w/2)) - 1100
$ch07_x_ri = ($ch07_x_ce + (($sizeMap["miz"]["x"]).w/2)) - 1100

$ch08_s_y = 0
$ch08_m_y = -35
$ch08_l_y = -90
$ch08_x_y = -220

$ch08_s_ce = ($scWidth/2) - (($sizeMap["syo"]["s"]).w/2) - 55
$ch08_s_le = ($ch08_s_ce - ($sizeMap["syo"]["s"]).w) + 200
$ch08_s_lc = ($ch08_s_ce - (($sizeMap["syo"]["s"]).w/2)) + 100
$ch08_s_rc = ($ch08_s_ce + (($sizeMap["syo"]["s"]).w/2)) - 100
$ch08_s_ri = ($ch08_s_ce + ($sizeMap["syo"]["s"]).w) - 200

$ch08_m_ce = ($scWidth/2) - (($sizeMap["syo"]["m"]).w/2) - 72
$ch08_m_le = ($ch08_m_ce - ($sizeMap["syo"]["m"]).w) + 400
$ch08_m_lc = ($ch08_m_ce - (($sizeMap["syo"]["m"]).w/2)) + 200
$ch08_m_rc = ($ch08_m_ce + (($sizeMap["syo"]["m"]).w/2)) - 200
$ch08_m_ri = ($ch08_m_ce + ($sizeMap["syo"]["m"]).w) - 400

$ch08_l_ce = ($scWidth/2) - (($sizeMap["syo"]["l"]).w/2) - 110
$ch08_l_le = ($ch08_l_ce - (($sizeMap["syo"]["l"]).w/2)) + 300
$ch08_l_lc = ($ch08_l_ce - (($sizeMap["syo"]["l"]).w/2)) + 300
$ch08_l_rc = ($ch08_l_ce + (($sizeMap["syo"]["l"]).w/2)) - 300
$ch08_l_ri = ($ch08_l_ce + (($sizeMap["syo"]["l"]).w/2)) - 300

$ch08_x_ce = ($scWidth/2) - (($sizeMap["syo"]["x"]).w/2) - 180
$ch08_x_le = ($ch08_x_ce - (($sizeMap["syo"]["x"]).w/2)) + 600
$ch08_x_lc = ($ch08_x_ce - (($sizeMap["syo"]["x"]).w/2)) + 600
$ch08_x_rc = ($ch08_x_ce + (($sizeMap["syo"]["x"]).w/2)) - 600
$ch08_x_ri = ($ch08_x_ce + (($sizeMap["syo"]["x"]).w/2)) - 600

$ch09_s_y = 0 - 190
$ch09_m_y = -35 - 255
$ch09_l_y = -90 - 385
$ch09_x_y = -220 - 640

$ch09_s_ce = ($scWidth/2) - (($sizeMap["zaA"]["s"]).w/2) - 55 - 5
$ch09_s_le = ($ch09_s_ce - ($sizeMap["zaA"]["s"]).w) + 200 + 265
$ch09_s_lc = ($ch09_s_ce - (($sizeMap["zaA"]["s"]).w/2)) + 100 + 134
$ch09_s_rc = ($ch09_s_ce + (($sizeMap["zaA"]["s"]).w/2)) - 100 - 134
$ch09_s_ri = ($ch09_s_ce + ($sizeMap["zaA"]["s"]).w) - 200 - 265

$ch09_m_ce = ($scWidth/2) - (($sizeMap["zaA"]["m"]).w/2) - 72 - 7
$ch09_m_le = ($ch09_m_ce - ($sizeMap["zaA"]["m"]).w) + 400 + 358
$ch09_m_lc = ($ch09_m_ce - (($sizeMap["zaA"]["m"]).w/2)) + 200 + 179
$ch09_m_rc = ($ch09_m_ce + (($sizeMap["zaA"]["m"]).w/2)) - 200 - 179
$ch09_m_ri = ($ch09_m_ce + ($sizeMap["zaA"]["m"]).w) - 400 - 358

$ch09_l_ce = ($scWidth/2) - (($sizeMap["zaA"]["l"]).w/2) - 110 - 10
$ch09_l_le = ($ch09_l_ce - (($sizeMap["zaA"]["l"]).w/2)) + 300 + 268
$ch09_l_lc = ($ch09_l_ce - (($sizeMap["zaA"]["l"]).w/2)) + 300 + 268
$ch09_l_rc = ($ch09_l_ce + (($sizeMap["zaA"]["l"]).w/2)) - 300 - 268
$ch09_l_ri = ($ch09_l_ce + (($sizeMap["zaA"]["l"]).w/2)) - 300 - 268

$ch09_x_ce = ($scWidth/2) - (($sizeMap["zaA"]["x"]).w/2) - 180 - 15
$ch09_x_le = ($ch09_x_ce - (($sizeMap["zaA"]["x"]).w/2)) + 600 + 447
$ch09_x_lc = ($ch09_x_ce - (($sizeMap["zaA"]["x"]).w/2)) + 600 + 447
$ch09_x_rc = ($ch09_x_ce + (($sizeMap["zaA"]["x"]).w/2)) - 600 - 447
$ch09_x_ri = ($ch09_x_ce + (($sizeMap["zaA"]["x"]).w/2)) - 600 - 447

$ch10_s_y = -200
$ch10_m_y = -450
$ch10_l_y = -900
$ch10_x_y = -120

$ch10_s_ce = ($scWidth/2) - (($sizeMap["zaB"]["s"]).w/2) + 0
$ch10_s_le = ($ch10_s_ce - ($sizeMap["zaB"]["s"]).w) + 200 + 265
$ch10_s_lc = ($ch10_s_ce - (($sizeMap["zaB"]["s"]).w/2)) + 100 + 134
$ch10_s_rc = ($ch10_s_ce + (($sizeMap["zaB"]["s"]).w/2)) - 100 - 134
$ch10_s_ri = ($ch10_s_ce + ($sizeMap["zaB"]["s"]).w) - 200 - 265

$ch10_m_ce = ($scWidth/2) - (($sizeMap["zaB"]["m"]).w/2) + 0
$ch10_m_le = ($ch10_m_ce - ($sizeMap["zaB"]["m"]).w) + 400 + 358
$ch10_m_lc = ($ch10_m_ce - (($sizeMap["zaB"]["m"]).w/2)) + 200 + 179
$ch10_m_rc = ($ch10_m_ce + (($sizeMap["zaB"]["m"]).w/2)) - 200 - 179
$ch10_m_ri = ($ch10_m_ce + ($sizeMap["zaB"]["m"]).w) - 400 - 358

$ch10_l_ce = ($scWidth/2) - (($sizeMap["zaB"]["l"]).w/2) + 0
$ch10_l_le = ($ch10_l_ce - (($sizeMap["zaB"]["l"]).w/2)) + 300 + 268
$ch10_l_lc = ($ch10_l_ce - (($sizeMap["zaB"]["l"]).w/2)) + 300 + 268
$ch10_l_rc = ($ch10_l_ce + (($sizeMap["zaB"]["l"]).w/2)) - 300 - 268
$ch10_l_ri = ($ch10_l_ce + (($sizeMap["zaB"]["l"]).w/2)) - 300 - 268

$ch10_x_ce = ($scWidth/2) - (($sizeMap["zaB"]["x"]).w/2) + 0
$ch10_x_le = ($ch10_x_ce - (($sizeMap["zaB"]["x"]).w/2)) + 600 + 447
$ch10_x_lc = ($ch10_x_ce - (($sizeMap["zaB"]["x"]).w/2)) + 600 + 447
$ch10_x_rc = ($ch10_x_ce + (($sizeMap["zaB"]["x"]).w/2)) - 600 - 447
$ch10_x_ri = ($ch10_x_ce + (($sizeMap["zaB"]["x"]).w/2)) - 600 - 447

$ch11_s_g = 85
$ch11_m_g = $ch11_s_g + 25
$ch11_l_g = $ch11_s_g + 80
$ch11_x_g = $ch11_s_g + 180

$ch11_s_y = $ch01_s_y - $ch11_s_g
$ch11_m_y = $ch01_m_y - $ch11_m_g
$ch11_l_y = $ch01_l_y - $ch11_l_g
$ch11_x_y = $ch01_x_y - $ch11_x_g

$ch11_s_ce = ($scWidth/2) - (($sizeMap["zaB"]["s"]).w/2) - 9
$ch11_s_le = ($ch11_s_ce - ($sizeMap["zaB"]["s"]).w) + 480
$ch11_s_lc = ($ch11_s_ce - (($sizeMap["zaB"]["s"]).w/2)) + 240
$ch11_s_rc = ($ch11_s_ce + (($sizeMap["zaB"]["s"]).w/2)) - 240
$ch11_s_ri = ($ch11_s_ce + ($sizeMap["zaB"]["s"]).w) - 480

$ch11_m_ce = ($scWidth/2) - (($sizeMap["zaB"]["m"]).w/2) - 12
$ch11_m_le = ($ch11_m_ce - ($sizeMap["zaB"]["m"]).w) + 800
$ch11_m_lc = ($ch11_m_ce - (($sizeMap["zaB"]["m"]).w/2)) + 390
$ch11_m_rc = ($ch11_m_ce + (($sizeMap["zaB"]["m"]).w/2)) - 350
$ch11_m_ri = ($ch11_m_ce + ($sizeMap["zaB"]["m"]).w) - 780

$ch11_l_ce = ($scWidth/2) - (($sizeMap["zaB"]["l"]).w/2) - 18
$ch11_l_le = ($ch11_l_ce - (($sizeMap["zaB"]["l"]).w/2)) + 600
$ch11_l_lc = ($ch11_l_ce - (($sizeMap["zaB"]["l"]).w/2)) + 600
$ch11_l_rc = ($ch11_l_ce + (($sizeMap["zaB"]["l"]).w/2)) - 600
$ch11_l_ri = ($ch11_l_ce + (($sizeMap["zaB"]["l"]).w/2)) - 600

$ch11_x_ce = ($scWidth/2) - (($sizeMap["zaB"]["x"]).w/2) - 30
$ch11_x_le = ($ch11_x_ce - (($sizeMap["zaB"]["x"]).w/2)) + 1150
$ch11_x_lc = ($ch11_x_ce - (($sizeMap["zaB"]["x"]).w/2)) + 1150
$ch11_x_rc = ($ch11_x_ce + (($sizeMap["zaB"]["x"]).w/2)) - 1150
$ch11_x_ri = ($ch11_x_ce + (($sizeMap["zaB"]["x"]).w/2)) - 1150

# Position map based on macro08_std_chXX.ks
# Values are pixel-based and derived only from uncommented [eval exp=...] lines

$positionMap = @{
    "aka" = @{
        "s" = @{  # small
            "ce" = @{ x = $ch01_s_ce; y = $ch01_s_y; layer = 3}
            "le" = @{ x = $ch01_s_le; y = $ch01_s_y; layer = 1}
            "lc" = @{ x = $ch01_s_lc; y = $ch01_s_y; layer = 4}
            "rc" = @{ x = $ch01_s_rc; y = $ch01_s_y; layer = 5}
            "ri" = @{ x = $ch01_s_ri; y = $ch01_s_y; layer = 2}
        }
        "m" = @{  # medium
            "ce" = @{ x = $ch01_m_ce; y = $ch01_m_y; layer = 3}
            "le" = @{ x = $ch01_m_le; y = $ch01_m_y; layer = 1}
            "lc" = @{ x = $ch01_m_lc; y = $ch01_m_y; layer = 4}
            "rc" = @{ x = $ch01_m_rc; y = $ch01_m_y; layer = 5}
            "ri" = @{ x = $ch01_m_ri; y = $ch01_m_y; layer = 2}
        }
        "l" = @{  # large
            "ce" = @{ x = $ch01_l_ce; y = $ch01_l_y; layer = 3}
            "le" = @{ x = $ch01_l_le; y = $ch01_l_y; layer = 1}
            "lc" = @{ x = $ch01_l_lc; y = $ch01_l_y; layer = 4}
            "rc" = @{ x = $ch01_l_rc; y = $ch01_l_y; layer = 5}
            "ri" = @{ x = $ch01_l_ri; y = $ch01_l_y; layer = 2}
        }
        "x" = @{  # xlarge
            "ce" = @{ x = $ch01_x_ce; y = $ch01_x_y; layer = 3}
            "le" = @{ x = $ch01_x_le; y = $ch01_x_y; layer = 1}
            "lc" = @{ x = $ch01_x_lc; y = $ch01_x_y; layer = 4}
            "rc" = @{ x = $ch01_x_rc; y = $ch01_x_y; layer = 5}
            "ri" = @{ x = $ch01_x_ri; y = $ch01_x_y; layer = 2}
        }
    };
    "aoi" = @{
        "s" = @{  # small
            "ce" = @{ x = $ch02_s_ce; y = $ch02_s_y; layer = 3}
            "le" = @{ x = $ch02_s_le; y = $ch02_s_y; layer = 1}
            "lc" = @{ x = $ch02_s_lc; y = $ch02_s_y; layer = 4}
            "rc" = @{ x = $ch02_s_rc; y = $ch02_s_y; layer = 5}
            "ri" = @{ x = $ch02_s_ri; y = $ch02_s_y; layer = 2}
        }
        "m" = @{  # medium
            "ce" = @{ x = $ch02_m_ce; y = $ch02_m_y; layer = 3}
            "le" = @{ x = $ch02_m_le; y = $ch02_m_y; layer = 1}
            "lc" = @{ x = $ch02_m_lc; y = $ch02_m_y; layer = 4}
            "rc" = @{ x = $ch02_m_rc; y = $ch02_m_y; layer = 5}
            "ri" = @{ x = $ch02_m_ri; y = $ch02_m_y; layer = 2}
        }
        "l" = @{  # large
            "ce" = @{ x = $ch02_l_ce; y = $ch02_l_y; layer = 3}
            "le" = @{ x = $ch02_l_le; y = $ch02_l_y; layer = 1}
            "lc" = @{ x = $ch02_l_lc; y = $ch02_l_y; layer = 4}
            "rc" = @{ x = $ch02_l_rc; y = $ch02_l_y; layer = 5}
            "ri" = @{ x = $ch02_l_ri; y = $ch02_l_y; layer = 2}
        }
        "x" = @{  # xlarge
            "ce" = @{ x = $ch02_x_ce; y = $ch02_x_y; layer = 3}
            "le" = @{ x = $ch02_x_le; y = $ch02_x_y; layer = 1}
            "lc" = @{ x = $ch02_x_lc; y = $ch02_x_y; layer = 4}
            "rc" = @{ x = $ch02_x_rc; y = $ch02_x_y; layer = 5}
            "ri" = @{ x = $ch02_x_ri; y = $ch02_x_y; layer = 2}
        }
    };
    "mia" = @{
        "s" = @{  # small
            "ce" = @{ x = $ch03_s_ce; y = $ch03_s_y; layer = 3}
            "le" = @{ x = $ch03_s_le; y = $ch03_s_y; layer = 1}
            "lc" = @{ x = $ch03_s_lc; y = $ch03_s_y; layer = 4}
            "rc" = @{ x = $ch03_s_rc; y = $ch03_s_y; layer = 5}
            "ri" = @{ x = $ch03_s_ri; y = $ch03_s_y; layer = 2}
        }
        "m" = @{  # medium
            "ce" = @{ x = $ch03_m_ce; y = $ch03_m_y; layer = 3}
            "le" = @{ x = $ch03_m_le; y = $ch03_m_y; layer = 1}
            "lc" = @{ x = $ch03_m_lc; y = $ch03_m_y; layer = 4}
            "rc" = @{ x = $ch03_m_rc; y = $ch03_m_y; layer = 5}
            "ri" = @{ x = $ch03_m_ri; y = $ch03_m_y; layer = 2}
        }
        "l" = @{  # large
            "ce" = @{ x = $ch03_l_ce; y = $ch03_l_y; layer = 3}
            "le" = @{ x = $ch03_l_le; y = $ch03_l_y; layer = 1}
            "lc" = @{ x = $ch03_l_lc; y = $ch03_l_y; layer = 4}
            "rc" = @{ x = $ch03_l_rc; y = $ch03_l_y; layer = 5}
            "ri" = @{ x = $ch03_l_ri; y = $ch03_l_y; layer = 2}
        }
        "x" = @{  # xlarge
            "ce" = @{ x = $ch03_x_ce; y = $ch03_x_y; layer = 3}
            "le" = @{ x = $ch03_x_le; y = $ch03_x_y; layer = 1}
            "lc" = @{ x = $ch03_x_lc; y = $ch03_x_y; layer = 4}
            "rc" = @{ x = $ch03_x_rc; y = $ch03_x_y; layer = 5}
            "ri" = @{ x = $ch03_x_ri; y = $ch03_x_y; layer = 2}
        }
    };
    "mei" = @{
        "s" = @{  # small
            "ce" = @{ x = $ch04_s_ce; y = $ch04_s_y; layer = 3}
            "le" = @{ x = $ch04_s_le; y = $ch04_s_y; layer = 1}
            "lc" = @{ x = $ch04_s_lc; y = $ch04_s_y; layer = 4}
            "rc" = @{ x = $ch04_s_rc; y = $ch04_s_y; layer = 5}
            "ri" = @{ x = $ch04_s_ri; y = $ch04_s_y; layer = 2}
        }
        "m" = @{  # medium
            "ce" = @{ x = $ch04_m_ce; y = $ch04_m_y; layer = 3}
            "le" = @{ x = $ch04_m_le; y = $ch04_m_y; layer = 1}
            "lc" = @{ x = $ch04_m_lc; y = $ch04_m_y; layer = 4}
            "rc" = @{ x = $ch04_m_rc; y = $ch04_m_y; layer = 5}
            "ri" = @{ x = $ch04_m_ri; y = $ch04_m_y; layer = 2}
        }
        "l" = @{  # large
            "ce" = @{ x = $ch04_l_ce; y = $ch04_l_y; layer = 3}
            "le" = @{ x = $ch04_l_le; y = $ch04_l_y; layer = 1}
            "lc" = @{ x = $ch04_l_lc; y = $ch04_l_y; layer = 4}
            "rc" = @{ x = $ch04_l_rc; y = $ch04_l_y; layer = 5}
            "ri" = @{ x = $ch04_l_ri; y = $ch04_l_y; layer = 2}
        }
        "x" = @{  # xlarge
            "ce" = @{ x = $ch04_x_ce; y = $ch04_x_y; layer = 3}
            "le" = @{ x = $ch04_x_le; y = $ch04_x_y; layer = 1}
            "lc" = @{ x = $ch04_x_lc; y = $ch04_x_y; layer = 4}
            "rc" = @{ x = $ch04_x_rc; y = $ch04_x_y; layer = 5}
            "ri" = @{ x = $ch04_x_ri; y = $ch04_x_y; layer = 2}
        }
    };
    "syu" = @{
        "s" = @{  # small
            "ce" = @{ x = $ch05_s_ce; y = $ch05_s_y; layer = 3}
            "le" = @{ x = $ch05_s_le; y = $ch05_s_y; layer = 1}
            "lc" = @{ x = $ch05_s_lc; y = $ch05_s_y; layer = 4}
            "rc" = @{ x = $ch05_s_rc; y = $ch05_s_y; layer = 5}
            "ri" = @{ x = $ch05_s_ri; y = $ch05_s_y; layer = 2}
        }
        "m" = @{  # medium
            "ce" = @{ x = $ch05_m_ce; y = $ch05_m_y; layer = 3}
            "le" = @{ x = $ch05_m_le; y = $ch05_m_y; layer = 1}
            "lc" = @{ x = $ch05_m_lc; y = $ch05_m_y; layer = 4}
            "rc" = @{ x = $ch05_m_rc; y = $ch05_m_y; layer = 5}
            "ri" = @{ x = $ch05_m_ri; y = $ch05_m_y; layer = 2}
        }
        "l" = @{  # large
            "ce" = @{ x = $ch05_l_ce; y = $ch05_l_y; layer = 3}
            "le" = @{ x = $ch05_l_le; y = $ch05_l_y; layer = 1}
            "lc" = @{ x = $ch05_l_lc; y = $ch05_l_y; layer = 4}
            "rc" = @{ x = $ch05_l_rc; y = $ch05_l_y; layer = 5}
            "ri" = @{ x = $ch05_l_ri; y = $ch05_l_y; layer = 2}
        }
        "x" = @{  # xlarge
            "ce" = @{ x = $ch05_x_ce; y = $ch05_x_y; layer = 3}
            "le" = @{ x = $ch05_x_le; y = $ch05_x_y; layer = 1}
            "lc" = @{ x = $ch05_x_lc; y = $ch05_x_y; layer = 4}
            "rc" = @{ x = $ch05_x_rc; y = $ch05_x_y; layer = 5}
            "ri" = @{ x = $ch05_x_ri; y = $ch05_x_y; layer = 2}
        }
    };
    "kak" = @{
        "s" = @{  # small
            "ce" = @{ x = $ch06_s_ce; y = $ch06_s_y; layer = 3}
            "le" = @{ x = $ch06_s_le; y = $ch06_s_y; layer = 1}
            "lc" = @{ x = $ch06_s_lc; y = $ch06_s_y; layer = 4}
            "rc" = @{ x = $ch06_s_rc; y = $ch06_s_y; layer = 5}
            "ri" = @{ x = $ch06_s_ri; y = $ch06_s_y; layer = 2}
        }
        "m" = @{  # medium
            "ce" = @{ x = $ch06_m_ce; y = $ch06_m_y; layer = 3}
            "le" = @{ x = $ch06_m_le; y = $ch06_m_y; layer = 1}
            "lc" = @{ x = $ch06_m_lc; y = $ch06_m_y; layer = 4}
            "rc" = @{ x = $ch06_m_rc; y = $ch06_m_y; layer = 5}
            "ri" = @{ x = $ch06_m_ri; y = $ch06_m_y; layer = 2}
        }
        "l" = @{  # large
            "ce" = @{ x = $ch06_l_ce; y = $ch06_l_y; layer = 3}
            "le" = @{ x = $ch06_l_le; y = $ch06_l_y; layer = 1}
            "lc" = @{ x = $ch06_l_lc; y = $ch06_l_y; layer = 4}
            "rc" = @{ x = $ch06_l_rc; y = $ch06_l_y; layer = 5}
            "ri" = @{ x = $ch06_l_ri; y = $ch06_l_y; layer = 2}
        }
        "x" = @{  # xlarge
            "ce" = @{ x = $ch06_x_ce; y = $ch06_x_y; layer = 3}
            "le" = @{ x = $ch06_x_le; y = $ch06_x_y; layer = 1}
            "lc" = @{ x = $ch06_x_lc; y = $ch06_x_y; layer = 4}
            "rc" = @{ x = $ch06_x_rc; y = $ch06_x_y; layer = 5}
            "ri" = @{ x = $ch06_x_ri; y = $ch06_x_y; layer = 2}
        }
    };
    "miz" = @{
        "s" = @{  # small
            "ce" = @{ x = $ch07_s_ce; y = $ch07_s_y; layer = 3}
            "le" = @{ x = $ch07_s_le; y = $ch07_s_y; layer = 1}
            "lc" = @{ x = $ch07_s_lc; y = $ch07_s_y; layer = 4}
            "rc" = @{ x = $ch07_s_rc; y = $ch07_s_y; layer = 5}
            "ri" = @{ x = $ch07_s_ri; y = $ch07_s_y; layer = 2}
        }
        "m" = @{  # medium
            "ce" = @{ x = $ch07_m_ce; y = $ch07_m_y; layer = 3}
            "le" = @{ x = $ch07_m_le; y = $ch07_m_y; layer = 1}
            "lc" = @{ x = $ch07_m_lc; y = $ch07_m_y; layer = 4}
            "rc" = @{ x = $ch07_m_rc; y = $ch07_m_y; layer = 5}
            "ri" = @{ x = $ch07_m_ri; y = $ch07_m_y; layer = 2}
        }
        "l" = @{  # large
            "ce" = @{ x = $ch07_l_ce; y = $ch07_l_y; layer = 3}
            "le" = @{ x = $ch07_l_le; y = $ch07_l_y; layer = 1}
            "lc" = @{ x = $ch07_l_lc; y = $ch07_l_y; layer = 4}
            "rc" = @{ x = $ch07_l_rc; y = $ch07_l_y; layer = 5}
            "ri" = @{ x = $ch07_l_ri; y = $ch07_l_y; layer = 2}
        }
        "x" = @{  # xlarge
            "ce" = @{ x = $ch07_x_ce; y = $ch07_x_y; layer = 3}
            "le" = @{ x = $ch07_x_le; y = $ch07_x_y; layer = 1}
            "lc" = @{ x = $ch07_x_lc; y = $ch07_x_y; layer = 4}
            "rc" = @{ x = $ch07_x_rc; y = $ch07_x_y; layer = 5}
            "ri" = @{ x = $ch07_x_ri; y = $ch07_x_y; layer = 2}
        }
    };
    "syo" = @{
        "s" = @{  # small
            "ce" = @{ x = $ch08_s_ce; y = $ch08_s_y; layer = 3}
            "le" = @{ x = $ch08_s_le; y = $ch08_s_y; layer = 1}
            "lc" = @{ x = $ch08_s_lc; y = $ch08_s_y; layer = 4}
            "rc" = @{ x = $ch08_s_rc; y = $ch08_s_y; layer = 5}
            "ri" = @{ x = $ch08_s_ri; y = $ch08_s_y; layer = 2}
        }
        "m" = @{  # medium
            "ce" = @{ x = $ch08_m_ce; y = $ch08_m_y; layer = 3}
            "le" = @{ x = $ch08_m_le; y = $ch08_m_y; layer = 1}
            "lc" = @{ x = $ch08_m_lc; y = $ch08_m_y; layer = 4}
            "rc" = @{ x = $ch08_m_rc; y = $ch08_m_y; layer = 5}
            "ri" = @{ x = $ch08_m_ri; y = $ch08_m_y; layer = 2}
        }
        "l" = @{  # large
            "ce" = @{ x = $ch08_l_ce; y = $ch08_l_y; layer = 3}
            "le" = @{ x = $ch08_l_le; y = $ch08_l_y; layer = 1}
            "lc" = @{ x = $ch08_l_lc; y = $ch08_l_y; layer = 4}
            "rc" = @{ x = $ch08_l_rc; y = $ch08_l_y; layer = 5}
            "ri" = @{ x = $ch08_l_ri; y = $ch08_l_y; layer = 2}
        }
        "x" = @{  # xlarge
            "ce" = @{ x = $ch08_x_ce; y = $ch08_x_y; layer = 3}
            "le" = @{ x = $ch08_x_le; y = $ch08_x_y; layer = 1}
            "lc" = @{ x = $ch08_x_lc; y = $ch08_x_y; layer = 4}
            "rc" = @{ x = $ch08_x_rc; y = $ch08_x_y; layer = 5}
            "ri" = @{ x = $ch08_x_ri; y = $ch08_x_y; layer = 2}
        }
    };
    "zaA" = @{
        "s" = @{  # small
            "ce" = @{ x = $ch09_s_ce; y = $ch09_s_y; layer = 3}
            "le" = @{ x = $ch09_s_le; y = $ch09_s_y; layer = 1}
            "lc" = @{ x = $ch09_s_lc; y = $ch09_s_y; layer = 4}
            "rc" = @{ x = $ch09_s_rc; y = $ch09_s_y; layer = 5}
            "ri" = @{ x = $ch09_s_ri; y = $ch09_s_y; layer = 2}
        }
        "m" = @{  # medium
            "ce" = @{ x = $ch09_m_ce; y = $ch09_m_y; layer = 3}
            "le" = @{ x = $ch09_m_le; y = $ch09_m_y; layer = 1}
            "lc" = @{ x = $ch09_m_lc; y = $ch09_m_y; layer = 4}
            "rc" = @{ x = $ch09_m_rc; y = $ch09_m_y; layer = 5}
            "ri" = @{ x = $ch09_m_ri; y = $ch09_m_y; layer = 2}
        }
        "l" = @{  # large
            "ce" = @{ x = $ch09_l_ce; y = $ch09_l_y; layer = 3}
            "le" = @{ x = $ch09_l_le; y = $ch09_l_y; layer = 1}
            "lc" = @{ x = $ch09_l_lc; y = $ch09_l_y; layer = 4}
            "rc" = @{ x = $ch09_l_rc; y = $ch09_l_y; layer = 5}
            "ri" = @{ x = $ch09_l_ri; y = $ch09_l_y; layer = 2}
        }
        "x" = @{  # xlarge
            "ce" = @{ x = $ch09_x_ce; y = $ch09_x_y; layer = 3}
            "le" = @{ x = $ch09_x_le; y = $ch09_x_y; layer = 1}
            "lc" = @{ x = $ch09_x_lc; y = $ch09_x_y; layer = 4}
            "rc" = @{ x = $ch09_x_rc; y = $ch09_x_y; layer = 5}
            "ri" = @{ x = $ch09_x_ri; y = $ch09_x_y; layer = 2}
        }
    };
    "zaB" = @{
        "s" = @{  # small
            "ce" = @{ x = $ch10_s_ce; y = $ch10_s_y; layer = 3}
            "le" = @{ x = $ch10_s_le; y = $ch10_s_y; layer = 1}
            "lc" = @{ x = $ch10_s_lc; y = $ch10_s_y; layer = 4}
            "rc" = @{ x = $ch10_s_rc; y = $ch10_s_y; layer = 5}
            "ri" = @{ x = $ch10_s_ri; y = $ch10_s_y; layer = 2}
        }
        "m" = @{  # medium
            "ce" = @{ x = $ch10_m_ce; y = $ch10_m_y; layer = 3}
            "le" = @{ x = $ch10_m_le; y = $ch10_m_y; layer = 1}
            "lc" = @{ x = $ch10_m_lc; y = $ch10_m_y; layer = 4}
            "rc" = @{ x = $ch10_m_rc; y = $ch10_m_y; layer = 5}
            "ri" = @{ x = $ch10_m_ri; y = $ch10_m_y; layer = 2}
        }
        "l" = @{  # large
            "ce" = @{ x = $ch10_l_ce; y = $ch10_l_y; layer = 3}
            "le" = @{ x = $ch10_l_le; y = $ch10_l_y; layer = 1}
            "lc" = @{ x = $ch10_l_lc; y = $ch10_l_y; layer = 4}
            "rc" = @{ x = $ch10_l_rc; y = $ch10_l_y; layer = 5}
            "ri" = @{ x = $ch10_l_ri; y = $ch10_l_y; layer = 2}
        }
        "x" = @{  # xlarge
            "ce" = @{ x = $ch10_x_ce; y = $ch10_x_y; layer = 3}
            "le" = @{ x = $ch10_x_le; y = $ch10_x_y; layer = 1}
            "lc" = @{ x = $ch10_x_lc; y = $ch10_x_y; layer = 4}
            "rc" = @{ x = $ch10_x_rc; y = $ch10_x_y; layer = 5}
            "ri" = @{ x = $ch10_x_ri; y = $ch10_x_y; layer = 2}
        }
    };
    "ai" = @{
        "s" = @{  # small
            "ce" = @{ x = $ch11_s_ce; y = $ch11_s_y; layer = 3}
            "le" = @{ x = $ch11_s_le; y = $ch11_s_y; layer = 1}
            "lc" = @{ x = $ch11_s_lc; y = $ch11_s_y; layer = 4}
            "rc" = @{ x = $ch11_s_rc; y = $ch11_s_y; layer = 5}
            "ri" = @{ x = $ch11_s_ri; y = $ch11_s_y; layer = 2}
        }
        "m" = @{  # medium
            "ce" = @{ x = $ch11_m_ce; y = $ch11_m_y; layer = 3}
            "le" = @{ x = $ch11_m_le; y = $ch11_m_y; layer = 1}
            "lc" = @{ x = $ch11_m_lc; y = $ch11_m_y; layer = 4}
            "rc" = @{ x = $ch11_m_rc; y = $ch11_m_y; layer = 5}
            "ri" = @{ x = $ch11_m_ri; y = $ch11_m_y; layer = 2}
        }
        "l" = @{  # large
            "ce" = @{ x = $ch11_l_ce; y = $ch11_l_y; layer = 3}
            "le" = @{ x = $ch11_l_le; y = $ch11_l_y; layer = 1}
            "lc" = @{ x = $ch11_l_lc; y = $ch11_l_y; layer = 4}
            "rc" = @{ x = $ch11_l_rc; y = $ch11_l_y; layer = 5}
            "ri" = @{ x = $ch11_l_ri; y = $ch11_l_y; layer = 2}
        }
        "x" = @{  # xlarge
            "ce" = @{ x = $ch11_x_ce; y = $ch11_x_y; layer = 3}
            "le" = @{ x = $ch11_x_le; y = $ch11_x_y; layer = 1}
            "lc" = @{ x = $ch11_x_lc; y = $ch11_x_y; layer = 4}
            "rc" = @{ x = $ch11_x_rc; y = $ch11_x_y; layer = 5}
            "ri" = @{ x = $ch11_x_ri; y = $ch11_x_y; layer = 2}
        }
    }
}

function Get-MacroHash {
    param ([string]$macro)
    return [string]([Math]::Abs($macro.GetHashCode()))
}

# Step 1: Parse [std_*] Macro

function Parse-Macro {
    param (
        [string]$macro
    )

    if ($macro -match '\[std_(\w+)\s+([^\]]+)\]') {
        $char = $matches[1]
        $args = $matches[2] -split '\s+'

        $result = @{
            character = $char
            size = ''
            outfit = ''
            pose = ''
            face = ''
            semen = $false
            blush = $false
            magan = $false
            aura = ''
            location = ''
            raw_args = $args
            hashcode = [string](Get-MacroHash $macro)
        }

        foreach ($arg in $args) {
            if ($arg -match '^([sml]|xl)$') { $result.size = $arg }
            elseif ($arg -match '^p\d+$') { $result.pose = $arg }
            elseif ($arg -match '^f\d+$') { $result.face = $arg }
            elseif ($arg -eq 'eki') { $result.semen = $true }
            elseif ($arg -match '^(ho|hoho)$') { $result.blush = $true }
            elseif ($arg -match '^magan$') { $result.magan = $true }
            elseif ($arg -match '^o\d+$') { $result.aura = $arg }
            elseif ($arg -match '^(ce|le|lc|rc|ri)$') { $result.location = $arg }
            elseif ($arg -match '^(ha|se|si|siw|ja|jaw|ma|mad|maw|madw)$') { $result.outfit = $arg }
        }

        Write-Verbose "Parsed Macro:"
        Write-Verbose "  Character: $($result.character)"
        Write-Verbose "  Size:      $($result.size)"
        Write-Verbose "  Outfit:    $($result.outfit)"
        Write-Verbose "  Pose:      $($result.pose)"
        Write-Verbose "  Face ID:   $($result.face)"
        Write-Verbose "  Blush:     $($result.blush)"
        Write-Verbose "  Semen:     $($result.semen)"
        Write-Verbose "  Magan:     $($result.magan)"
        Write-Verbose "  Aura:      $($result.aura)"
        Write-Verbose "  Location:  $($result.location)"

        return $result
    } else {
        throw "Invalid macro format: $macro"
    }
}

# Step 2: Resolve Filenames from Parsed Macro

function Resolve-Filenames {
    param (
        [hashtable]$parsed,
        [string]$outputPath
    )

    $charCodeMap = @{ 
        'aka' = @{ c = 'ch01'; f = 'ch01'}; 
        'aoi' = @{ c = 'ch02'; f = 'ch02'}; 
        'mia' = @{ c = 'ch03'; f = 'ch03'}; 
        'mei' = @{ c = 'ch04'; f = 'ch04'}; 
        'syu' = @{ c = 'ch05'; f = 'mob'}; 
        'kak' = @{ c = 'ch06'; f = 'mob'}; 
        'miz' = @{ c = 'ch07'; f = 'mob'}; 
        'syo' = @{ c = 'ch08'; f = 'mob'}; 
        'zaA' = @{ c = 'ch09'; f = 'mob'}; 
        'zaB' = @{ c = 'ch10'; f = 'mob'}; 
        'ai' = @{ c = 'ch11'; f = 'mob'}; 
    }
    $outfitCodeMaps = @{
        "aka" = @{ 'ha' = 'a'; 'se' = 'b'; 'ma' = 'c'; 'mad' = 'd' }
        "aoi" = @{ 'ha' = 'a'; 'se' = 'b'; 'ma' = 'c'; 'mad' = 'd' }
        "mia" = @{ 'ha' = 'a'; 'se' = 'b'; 'ma' = 'c'; 'mad' = 'd' }
        "mei" = @{ 'ha' = 'a'; 'si' = 'b'; 'siw' = 'c'; 'ja' = 'd'; 'jaw' = 'e'; 'ma' = 'f'; 'mad' = 'g'; 'maw' = 'h'; 'madw' = 'i' }
        # Add additional maps for aka, aoi, mia as needed
    }
    
    $charCode = ($charCodeMap[$parsed.character]).c
    $charFolder = (Join-Path $scriptRoot "..\..\source\g_std\$(($charCodeMap[$parsed.character]).f)")

    $size = if ($parsed.size -eq 'xl') { 'x' } else { $parsed.size }
    $pose = $parsed.pose 
    $faceID = [int]($parsed.face -replace 'f', '')
    $auraID = [int]($parsed.aura -replace 'o', '')
    $auraNum = if ($parsed.aura) { $auraID } else { 0 }

    if ($parsed.character -in @('aka', 'aoi', 'mia', 'mei')) {
        $outfitCodeMap = $outfitCodeMaps[$parsed.character]
        $outfitCode = $outfitCodeMap[$parsed.outfit]
        $eki = if ($parsed.semen) { '1' } else { '0' }
    }

    $expectsFace   = $parsed.character -in @('aka', 'aoi', 'mia', 'mei')
    $expectsAddon1 = $expectsFace -and ($parsed.character -in @('aoi', 'mei') -and ($pose -ne 'p1'))
    $expectsAddon2 = $false #$expectsFace ## Not Used
    $expectsSemen  = $expectsFace -and $parsed.character -eq 'mei' -and $eki -eq '1'

    # ---- Body Filename ----
    if ($parsed.character -in @('aka', 'aoi', 'mia', 'mei')) {
        if ($parsed.outfit -in @('ha', 'mad')) {
            $body = "${charCode}_${size}_base_${outfitCode}${eki}_${pose}.png"
        } else {
            $body = "${charCode}_${size}_base_${outfitCode}0_${pose}.png"
        }
    } elseif ($parsed.character -in @('syu', 'syo', 'zaA', 'zaB')) {
        $body = "${charCode}_${size}_base.png"
    } elseif ($parsed.character -in @('kak', 'miz')) {
        $body = "${charCode}_${size}_base_a${auraNum}.png"
    } elseif ($parsed.character -eq 'ai') {
        $body = "${charCode}_${size}_base_d0_${pose}.png"
    } 

    # ---- Face Filename ----
    $blushOffset = if ($parsed.blush) { 1 } else { 0 }
    $faceNum = ($faceID * 10) + $blushOffset
    
    $addon1 = $null
    $addon2 = $null
    $semenOverlay = $null

    # ---- Face Filename Resolution
    if ($parsed.character -in @('aka', 'aoi', 'mia')) {
        if ($parsed.outfit -in @('ha', 'mad')) {
            $face = "${charCode}_${size}_face_a${eki}_p1_{0:D3}.png" -f $faceNum
        } else {
            $face = "${charCode}_${size}_face_a0_p1_{0:D3}.png" -f $faceNum
        }
    
        if ($parsed.character -eq 'aoi' -and $pose -in @('p2', 'p3')) {
            if ($parsed.outfit -eq 'ha') {
                $addon1 = "${charCode}_${size}_base_a${eki}_${pose}_add.png"
            }
            elseif ($parsed.outfit -eq 'se') {
                $addon1 = "${charCode}_${size}_base_b0_${pose}_add.png"
            }
            elseif ($parsed.outfit -eq 'ma') {
                $addon1 = "${charCode}_${size}_base_c0_${pose}_add.png"
            }
            elseif ($parsed.outfit -eq 'mad' -and $pose -eq 'p2') {
                $addon1 = "${charCode}_${size}_base_c0_p2_add.png"
            }
            elseif ($parsed.outfit -eq 'mad' -and $pose -eq 'p3') {
                $addon1 = "${charCode}_${size}_base_d${eki}_p3_add.png"
            }
        }    
    }
    elseif ($parsed.character -eq 'mei') {
        if (-not $parsed.magan -and $pose -eq 'p1') {
            if ($parsed.outfit -in @('ha', 'si', 'siw', 'ja', 'jaw')) {
                $face = "${charCode}_${size}_face_a0_p1_{0:D3}.png" -f $faceNum
            } elseif ($parsed.outfit -in @('ma', 'mad', 'maw', 'madw')) {
                $face = "${charCode}_${size}_face_c0_p1_{0:D3}.png" -f $faceNum
            }            
        }
        elseif (-not $parsed.magan -and $pose -eq 'p2') {
            $face = "${charCode}_${size}_face_j0_p2_{0:D3}.png" -f $faceNum
            if ($parsed.outfit -in @('ha', 'si', 'siw', 'ja', 'jaw')) {
                $addon1 = "ch04_${size}_face_a0_p2_add.png"
            } elseif ($parsed.outfit -in @('ma', 'mad', 'maw', 'madw')) {
                $addon1 = "ch04_${size}_face_f0_p2_add.png"
            }
        }
        elseif ($parsed.magan -and $pose -eq 'p1') {
            if ($parsed.outfit -in @('ha', 'si', 'siw', 'ja', 'jaw')) {
                $face = "${charCode}_${size}_face_k0_p1_{0:D3}.png" -f $faceNum
            } elseif ($parsed.outfit -in @('ma', 'mad', 'maw', 'madw')) {
                $face = "${charCode}_${size}_face_j0_p1_{0:D3}.png" -f $faceNum
            }
        }
        elseif ($parsed.magan -and $pose -eq 'p2') {
            $face = "${charCode}_${size}_face_j0_p2_{0:D3}.png" -f $faceNum
            if ($parsed.outfit -in @('ha', 'si', 'siw', 'ja', 'jaw')) {
                $addon1 = "ch04_${size}_face_a0_p2_add2.png"
            } elseif ($parsed.outfit -in @('ma', 'mad', 'maw', 'madw')) {
                $addon1 = "ch04_${size}_face_f0_p2_add2.png"
            }
        }

        if ($parsed.semen) {
            $semenOverlay = "ch04_${size}_face_a1_seieki_add${blushOffset}.png"
        }
    }

    $bodyExists = Test-Path (Join-Path $charFolder "\$body")
    $faceExists = if ($face) { Test-Path (Join-Path $charFolder "\$face") } else { $false }
    $addon1Exists = if ($addon1) { Test-Path (Join-Path $charFolder "\$addon1") } else { $false }
    $addon2Exists = if ($addon2) { Test-Path (Join-Path $charFolder "\$addon2") } else { $false }
    $semenExists = if ($semenOverlay) { Test-Path (Join-Path $charFolder "\$semenOverlay") } else { $false }
    
    $logEntry = @()
    $logEntry += "     body: "     + $(if ($bodyExists)     { "✅ $body" } else { "❌ $body - Missing" })

    $logEntry += if ($expectsFace) {
        "     face: " + $(if ($faceExists) { "✅ $face" } else { "❌ $face - Missing" })
    } else {
        "     face: ⛔ Not Expected"
    }
    $logEntry += if ($expectsAddon1) {
        "  addon01: " + $(if ($addon1Exists) { "✅ $addon1" } else { "❌ $addon1 - Missing" })
    } else {
        "  addon01: ⛔ Not Expected"
    }

    $logEntry += if ($expectsAddon2) {
        "  addon01: " + $(if ($addon2Exists) { "✅ $addon2" } else { "❌ $addon2 - Missing" })
    } else {
        "  addon02: ⛔ Not Expected"
    }

    $logEntry += if ($expectsSemen) {
        "    semen: " + $(if ($semenExists) { "✅ $semenOverlay" } else { "❌ $semenOverlay - Missing" })
    } else {
        "    semen: ⛔ Not Expected"
    }

    Write-Verbose "Resolving filenames for: $($parsed.character)"

    Write-Verbose "  charCode: $charCode"
    Write-Verbose "  outfitCode: $outfitCode"
    Write-Verbose "  body: $body"
    Write-Verbose "  face: $face"

    if ($addon1) { Write-Verbose "  Addon1: $addon1" }
    if ($addon2) { Write-Verbose "  Addon2: $addon2" }
    if ($overlay) { Write-Verbose "  Semen: $overlay" }

    return @{ body = $body; face = $face; addon1 = $addon1; addon2 = $addon2; semenOverlay = $semenOverlay; folder = $charFolder; log = $logEntry }
}

# Step 3: Compose Final Image with ImageMagick

function Compose-Image {
    param (
        [string]$macro,
        [string]$outputPath,
        [string]$backgroundPath = $null
    )

    $startTime = Get-Date

    $parsed = Parse-Macro -macro $macro
    $filenames = Resolve-Filenames -parsed $parsed

    $location = $parsed.location
    $hashCode = $parsed.hashcode
    $charKey = $parsed.character

    $charFolder = Resolve-Path $filenames.folder

    $canvasSize = '1280x720'
    $canvasColor = 'none'

    # Extract character and size from filename for positioning

    if ($filenames.body -match '_([smxl])_') { $sizeKey = $matches[1] } else { $sizeKey = 'm' }
    $pos = $positionMap[$charKey][$sizeKey][$location]

    if (-not $pos) {
        throw "Missing position for $charKey / $sizeKey / $location"
    }

    $layers = @()

    if ($backgroundPath) {
        if ([System.IO.Path]::IsPathRooted($backgroundPath)) {
          $bgPath = $backgroundPath
        } else {
          $bgPath = Join-Path $scriptRoot "..\..\source\g_bg\$backgroundPath"
        }
        if (-not (Test-Path $bgPath)) {
            Write-Warning "Background not found: $bgPath"
        } else {
            $layers += $bgPath
        }
    } else {
        $layers += "canvas:$canvasColor"
    }

    if ($filenames.body) {
        $bodyPath = Join-Path $charFolder "\$($filenames.body)"
        $layers += "`"$bodyPath`" -geometry +$($pos.x)+$($pos.y)"
    }
    if ($filenames.face) {
        $facePath = Join-Path $charFolder "\$($filenames.face)"
        $layers += "`"$facePath`" -geometry +$($pos.x)+$($pos.y)"
    }
    if ($filenames.addon1) {
        $addon1Path = Join-Path $charFolder "\$($filenames.addon1)"
        $layers += "`"$addon1Path`" -geometry +$($pos.x)+$($pos.y)"
    }
    if ($filenames.addon2) {
        $addon2Path = Join-Path $charFolder "\$($filenames.addon2)"
        $layers += "`"$addon2Path`" -geometry +$($pos.x)+$($pos.y)"
    }
    if ($filenames.semenOverlay) {
        $overlayPath = Join-Path $charFolder "\$($filenames.semenOverlay)"
        $layers += "`"$overlayPath`" -geometry +$($pos.x)+$($pos.y)"
    }

    $outputFile = Join-Path $outputPath "preview_${hashCode}.png"

    $base = if ($layers[0] -like "canvas:*") { $layers[0] } else { "`"$($layers[0])`"" }
    $layerCommands = $layers[1..($layers.Count - 1)] -join ' -composite '
    $cmd = "magick convert -size $canvasSize $base $layerCommands -composite `"$outputFile`""

    Write-Verbose "Compositing image with:"
    Write-Verbose "  Background: $backgroundPath"
    Write-Verbose "  Layers:"
    if ($bodyPath)     { Write-Verbose "    Body:   $bodyPath" }
    if ($facePath)     { Write-Verbose "    Face:   $facePath" }
    if ($addon1Path)   { Write-Verbose "    Addon1: $addon1Path" }
    if ($addon2Path)   { Write-Verbose "    Addon2: $addon2Path" }
    if ($overlayPath)  { Write-Verbose "    Semen:  $overlayPath" }

    Write-Host "Executing: $cmd"
    Invoke-Expression $cmd

    # Write log entry for this image
    $logPath = Join-Path $outputPath "render_log.txt"
    $logFileEntry = $filenames.log
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $duration = (Get-Date) - $startTime

    $logEntry = @()
    $logEntry += "timestamp: $timestamp"
    $logEntry += "macro: $macro"
    $logEntry += "hash: $hashCode"
    $logEntry += "output: $outputFile"
    $logEntry += "duration: {0:N2}s" -f $duration.TotalSeconds
    $logEntry += "layers: $charFolder"
    $logEntry += $logFileEntry

    $logEntry += "`n"

    [System.IO.File]::AppendAllText($logPath, ($logEntry -join "`n") + "`n", [System.Text.Encoding]::UTF8)

    return $outputFile
}

# Step 4: Batch Processing from File

function Process-MacroBatch {
    param (
        [string]$inputFile,
        [string]$outputPath,
        [string]$defaultBackground = $null,
        [switch]$Verbose
    )

    if (-not (Test-Path $inputFile)) {
        throw "Input file not found: $inputFile"
    }
    if (-not (Test-Path $outputPath)) {
        New-Item -ItemType Directory -Path $outputPath | Out-Null
    }

    $macros = Get-Content $inputFile | Where-Object { $_ -match '^\[std_' }

    foreach ($macro in $macros) {
        try {
            Compose-Image -macro $macro -outputPath $outputPath -backgroundPath $defaultBackground -Verbose:$VerbosePreference
        } catch {
            Write-Warning "Failed to process macro: $macro - $_"
        }
    }
}  


# Example Use
# Single-line test
$testMacro = "[std_mia m mad p2 f12 eki ri off]"
Compose-Image -macro $testMacro -outputPath $outputPath -backgroundPath "bg013c.png"


# Batch-mode example
#Process-MacroBatch -inputFile $(Join-Path $scriptRoot "\batch_macros.txt") -outputPath $outputPath -defaultBackground "bg011c.png"