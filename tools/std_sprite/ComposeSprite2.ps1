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

# 🚧 Planned Workflow:

# 1. Parse macro line for components:
#    - Character
#    - Size (e.g., m, l, x)
#    - Outfit (e.g., ha, ma, mad)
#    - Pose (p1, p2, etc.)
#    - Face ID (f01, f12, etc.)
#    - Blush (ho, hoho)
#    - Semen flag (eki)
#    - Location (ce, le, etc.)

# 2. Resolve filenames:
#    - Face + Body + Overlay PNGs
#    - Use std_sprite.md rules to build exact filenames

# 3. Place on canvas:
#    - Size canvas to screen size (e.g., 1280x720)
#    - Position character by location code (ce, le, lc, rc, ri)

# 4. If background is supplied:
#    - Place background behind all layers

# 5. Composite final image:
#    - Save to output folder with macro name hash

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

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

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
            location = ''
            raw_args = $args
        }

        foreach ($arg in $args) {
            if ($arg -match '^[mlx]$') { $result.size = $arg }
            elseif ($arg -match '^p\d+$') { $result.pose = $arg }
            elseif ($arg -match '^f\d+$') { $result.face = $arg }
            elseif ($arg -eq 'eki') { $result.semen = $true }
            elseif ($arg -match '^hoho?$') { $result.blush = $true }
            elseif ($arg -match '^(ce|le|lc|rc|ri)$') { $result.location = $arg }
            elseif ($arg -match '^(ha|ma|mad|c|d|a|g)$') { $result.outfit = $arg }
        }

        return $result
    } else {
        throw "Invalid macro format: $macro"
    }
}

# Step 2: Resolve Filenames from Parsed Macro

function Resolve-Filenames {
    param (
        [hashtable]$parsed
    )

    $charCodeMap = @{ 'aka' = 'ch01'; 'aoi' = 'ch02'; 'mia' = 'ch03'; 'mei' = 'ch04'; 'syu' = 'mob'; 'kak' = 'mob'; 'miz' = 'mob'; 'syo' = 'mob'; 'zaA' = 'mob'; 'zaB' = 'mob'; 'ai' = 'mob' }
    $outfitCodeMaps = @{
        "mei" = @{ 'ha' = 'a'; 'si' = 'b'; 'siw' = 'c'; 'ja' = 'd'; 'jaw' = 'e'; 'ma' = 'f'; 'mad' = 'g'; 'maw' = 'h'; 'madw' = 'i' }
        # Add additional maps for aka, aoi, mia as needed
    }

    $charCode = $charCodeMap[$parsed.character]
    $size = $parsed.size
    $pose = $parsed.pose
    $faceID = [int]($parsed.face -replace 'f', '')
    $outfitCodeMap = $outfitCodeMaps[$parsed.character]
    $outfitCode = $outfitCodeMap[$parsed.outfit]
    $eki = if ($parsed.semen) { '1' } else { '0' }

    # ---- Body Filename ----
    $body = "${charCode}_${size}_base_${outfitCode}${eki}_${pose}.png"

    # ---- Face Filename ----
    $blushOffset = if ($parsed.blush) { 1 } else { 0 }
    $faceNum = ($faceID * 10) + $blushOffset
    #$face = "${charCode}_${size}_face_${outfitCode}${eki}_p1_{0:D3}.png" -f $faceNum
    $face = "${charCode}_${size}_face_c0_p1_{0:D3}.png" -f $faceNum

    # ---- Overlay Filename (Mei only) ----
    $overlay = $null
    if ($parsed.character -eq 'mei' -and $parsed.semen) {
        $overlayBlush = if ($parsed.blush) { '1' } else { '0' }
        $overlay = "ch04_${size}_face_a1_seieki_add${overlayBlush}.png"
    }

    return @{ body = $body; face = $face; overlay = $overlay }
}

# Step 3: Compose Final Image with ImageMagick

# Position map for Mei (Character 04) based on macro08_std_ch04.ks
# Values are pixel-based and derived only from uncommented [eval exp=...] lines

$positionMap = @{
    "mei" = @{
        "s" = @{  # small
            "ce" = @{ x = 181; y = 45; layer = 3 }
            "le" = @{ x = -239; y = 45; layer = 1 }
            "lc" = @{ x = -29; y = 45; layer = 4 }
            "rc" = @{ x = 391; y = 45; layer = 5 }
            "ri" = @{ x = 601; y = 45; layer = 2 }
        }
        "m" = @{  # medium
            "ce" = @{ x = 28; y = -10; layer = 3 }
            "le" = @{ x = -372; y = -10; layer = 1 }
            "lc" = @{ x = -182; y = -10; layer = 4 }
            "rc" = @{ x = 278; y = -10; layer = 5 }
            "ri" = @{ x = 448; y = -10; layer = 2 }
        }
        "l" = @{  # large
            "ce" = @{ x = 190; y = -25; layer = 3 }
            "le" = @{ x = -160; y = -25; layer = 1 }
            "lc" = @{ x =  40;  y = -25; layer = 4 }
            "rc" = @{ x = 440; y = -25; layer = 5 }
            "ri" = @{ x = 640; y = -25; layer = 2 }
        }
        "x" = @{  # xlarge
            "ce" = @{ x = 10; y = -50; layer = 3 }
            "le" = @{ x = -440; y = -50; layer = 1 }
            "lc" = @{ x = -440; y = -50; layer = 4 }
            "rc" = @{ x = 260; y = -50; layer = 5 }
            "ri" = @{ x = 260; y = -50; layer = 2 }
        }
    }
}

Write-Host "Face file resolved to: $($filenames.face)"

function Compose-Image {
    param (
        [hashtable]$filenames,
        [string]$outputPath,
        [string]$backgroundPath = $null,
        [string]$location = 'ce'
    )

    $canvasSize = '1280x720'
    $canvasColor = 'none'

    # Extract character and size from filename for positioning
    if ($filenames.body -match '^ch(\d+)') { $charNum = $matches[1] } else { $charNum = '04' }
    $charKey = switch ($charNum) {
        '01' { 'aka' }
        '02' { 'aoi' }
        '03' { 'mia' }
        '04' { 'mei' }
        '05' { 'syu' }
        '06' { 'kak' }
        '07' { 'miz' }
        '08' { 'syo' }
        '09' { 'zaA' }
        '10' { 'zaB' }
        '11' { 'ai' }
        default { 'mei' }
    }

    $charCodeMap = @{ 'aka' = 'ch01'; 'aoi' = 'ch02'; 'mia' = 'ch03'; 'mei' = 'ch04'; 'syu' = 'mob'; 'kak' = 'mob'; 'miz' = 'mob'; 'syo' = 'mob'; 'zaA' = 'mob'; 'zaB' = 'mob'; 'ai' = 'mob' }
    $charCode = $charCodeMap[$charKey]

    if ($filenames.body -match '_([smxl])_') { $sizeKey = $matches[1] } else { $sizeKey = 'm' }
    $pos = $positionMap[$charKey][$sizeKey][$location]

    if (-not $pos) {
        throw "Missing position for $charKey / $sizeKey / $location"
    }

    $layers = @()

    if ($backgroundPath) {
        $bgPath = Join-Path $scriptRoot "..\source\g_bg\$backgroundPath"
        if (-not (Test-Path $bgPath)) {
            Write-Warning "Background not found: $bgPath"
        } else {
            $layers += $bgPath
        }
    } else {
        $layers += "canvas:$canvasColor"
    }

    if ($filenames.body) {
        $layers += (Join-Path $scriptRoot "..\source\g_std\$charCode\$($filenames.body)" + " -geometry +$($pos.x)+$($pos.y)")

    }
    if ($filenames.face) {
        $layers += (Join-Path $scriptRoot "..\source\g_std\$charCode\$($filenames.face)" + " -geometry +$($pos.x)+$($pos.y)")
    }
    if ($filenames.overlay) {
        $layers += (Join-Path $scriptRoot "..\source\g_std\$charCode\$($filenames.overlay)" + " -geometry +$($pos.x)+$($pos.y)")
    }
    

    $outputFile = Join-Path $outputPath "preview_${($filenames.body -replace '\.png$', '')}.png"
    $cmd = "magick convert -size $canvasSize xc:$canvasColor " + ($layers -join ' -composite ') + " -composite $outputFile"

    Write-Host "PWD: $(Get-Location)"
    Write-Host "Expected path: $($layers -join ' ')"

    Write-Host "Executing: $cmd"
    Invoke-Expression $cmd

    return $outputFile
}

# Step 4: Batch Processing from File

function Process-MacroBatch {
    param (
        [string]$inputFile,
        [string]$outputPath,
        [string]$defaultBackground = $null
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
            $parsed = Parse-Macro -macro $macro
            $filenames = Resolve-Filenames -parsed $parsed
            Compose-Image -filenames $filenames -outputPath $outputPath -backgroundPath $defaultBackground -location $parsed.location
        } catch {
            Write-Warning "Failed to process macro: $macro - $_"
        }
    }
}

# Example Use
# Single-line test
$testMacro = "[std_mei m mad p1 f12 eki ho ce]"
$parsed = Parse-Macro -macro $testMacro
$filenames = Resolve-Filenames -parsed $parsed
Compose-Image -filenames $filenames -outputPath $(Join-Path $scriptRoot ".\output") -location $parsed.location

# Batch-mode example
# Process-MacroBatch -inputFile ".\macros.txt" -outputPath ".\output" -defaultBackground ".\g_bg\bg001a.png"

