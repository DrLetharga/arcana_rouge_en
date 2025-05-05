param (
    [switch]$WhatIf
)

$logPath = Join-Path $PSScriptRoot "gtignore_update.log"
$scriptDir = Split-Path -Parent $PSScriptRoot
$baseDir = Split-Path -Parent $scriptDir
$sourceDir = Join-Path $baseDir "source"
$translationDir = Join-Path $baseDir "translation"
$gtignorePath = Join-Path $baseDir ".gtignore"
$gtignoreHeader = "# Ignore files found in /translation that match /source"

# Paths that should never be evaluated or altered
$manualIgnorePaths = @(
    "/source/アルカナルージュ限定版さいとうつかさ先生描き下ろしコミック.pdf",
    "/source/startup.exe",
    "/source/神聖昂燐アルカナルージュ.exe",
    "/source/茜ちゃんの先生看病にっき（音声のみ版）.ogg",
    "/source/茜ちゃんの先生看病にっき（音声のみ版）.wav",
    "/source/茜ちゃんの先生看病にっき.ogg",
    "/source/茜ちゃんの先生看病にっき.wav", 
	"/source/data/layereximage.dll" , "/source/data/perspective.dll",
	"/source/k_bonus/se_sys011.ogg", "/source/plugin/krflash.dll", "/source/plugin/krmovie.dll",
	"/source/plugin/windowex.dll", "/source/system/check.png", "/source/system/linebreak.png", 
	"/source/system/linebreak_a.png", "/source/system/linebreak_a_m.png"
    "/source/g_bg/", "/source/g_cg/", "/source/g_image/", "/source/g_rule/", "/source/g_std/",
    "/source/g_thm/", "/source/movie/", "/source/s_bgm/", "/source/s_se/", "/source/s_sysse/", "/source/s_voice/",
    "/translation/Akane_NurseDiary (Voice Only).ogg", "/translation/Akane_NurseDiary (Voice Only).wav",
    "/translation/Akane_NurseDiary.ogg", "/translation/Akane_NurseDiary.wav",
    "/translation/Arcana Rouge Limited Edition – Exclusive Comic Drawn by Saito Tsukasa.pdf",
    "/translation/data.xp3", "/translation/debugger.sdp", "/translation/k2compat.xp3",
    "/translation/krkrdebg.exe", "/translation/Sacred Angel - Arcana Rouge[EN].exe",
    "/translation/tvpwin32_dbg.exe", "/translation/fonts/",
	"/translation/data/layereximage.dll" , "/translation/data/perspective.dll",
	"/translation/k_bonus/se_sys011.ogg", "/translation/plugin/krflash.dll", "/translation/plugin/krmovie.dll",
	"/translation/plugin/windowex.dll", "/translation/system/check.png", "/translation/system/linebreak.png", 
	"/translation/system/linebreak_a.png", "/translation/system/linebreak_a_m.png"
    "/translation/g_bg/", "/translation/g_cg/", "/translation/g_image/", "/translation/g_rule/",
    "/translation/g_std/", "/translation/g_thm/", "/translation/movie/",
    "/translation/s_bgm/", "/translation/s_se/", "/translation/s_sysse/", "/translation/s_voice/"
) | ForEach-Object { $_.ToLowerInvariant().TrimEnd('/') }

function Normalize-Path {
    param($fullPath, $rootPath)
    return ($fullPath.Substring($rootPath.Length).TrimStart('\') -replace '\\', '/').ToLowerInvariant()
}

function Write-Log {
    param([string]$Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$timestamp $Message" | Out-File -Append -FilePath $logPath
    Write-Host $Message
}

# Gather source files: normalized path => hash
$sourceFiles = Get-ChildItem -Path $sourceDir -Recurse -File | Where-Object {
    $norm = Normalize-Path $_.FullName $sourceDir
    $prefixedPath = "/source/$norm"
    -not ($manualIgnorePaths | Where-Object { $prefixedPath.StartsWith($_) })
} | ForEach-Object {
    $norm = Normalize-Path $_.FullName $sourceDir
    $hash = Get-FileHash $_.FullName -Algorithm SHA256
    [PSCustomObject]@{ Path = $norm; Hash = $hash.Hash }
} | Group-Object -AsHashTable -Property Path

# Prepare .gtignore section
$gtignoreLines = @()
$existingEntries = @{}
$preHeader = @()
$postHeader = @()
$inEntrySection = $false

if (Test-Path $gtignorePath) {
    $gtignoreLines = Get-Content $gtignorePath
    foreach ($line in $gtignoreLines) {
        if ($line -eq $gtignoreHeader) {
            $inEntrySection = $true
            $postHeader += $line
            continue
        }

        if ($inEntrySection) {
            if ($line.Trim() -ne "") {
                $norm = ($line -replace '\\', '/').ToLowerInvariant()
                $existingEntries[$norm] = $true
                $postHeader += $line
            }
        } else {
            $preHeader += $line
        }
    }
}

$validEntries = @{}
$entriesToAdd = @()
$entriesToRemove = @()

# Compare translation files to source
Get-ChildItem -Path $translationDir -Recurse -File | Where-Object {
    $relPath = Normalize-Path $_.FullName $translationDir
    $prefixedPath = "/translation/$relPath"
    -not ($manualIgnorePaths | Where-Object { $prefixedPath.StartsWith($_) })
} | ForEach-Object {
    $relPath = Normalize-Path $_.FullName $translationDir
    $prefixedPath = "/translation/$relPath"

    if ($sourceFiles.ContainsKey($relPath)) {
        $translationHash = (Get-FileHash $_.FullName -Algorithm SHA256).Hash
        $sourceHash = $sourceFiles[$relPath].Hash

        if ($translationHash -eq $sourceHash) {
            $validEntries[$prefixedPath.ToLowerInvariant()] = $true
            if (-not $existingEntries.ContainsKey($prefixedPath.ToLowerInvariant())) {
                $entriesToAdd += $prefixedPath
            }
        }
    }
}

# Identify outdated entries to remove
foreach ($entry in $existingEntries.Keys) {
    if (-not $validEntries.ContainsKey($entry)) {
        $entriesToRemove += $entry
    }
}

# Apply changes and log
Write-Log "=== gtignore update run ==="

foreach ($entry in $entriesToAdd) {
    Write-Log "Adding: $entry"
}

foreach ($entry in $entriesToRemove) {
    Write-Log "Removing: $entry"
}

if (-not $WhatIf) {
    $updatedPostHeader = $postHeader | Where-Object {
        $norm = ($_ -replace '\\', '/').ToLowerInvariant()
        -not $entriesToRemove.Contains($norm)
    }

    $updatedPostHeader += $entriesToAdd

    $finalContent = @()
    if ($preHeader.Count -gt 0) {
        $finalContent += $preHeader
    }
    $finalContent += $gtignoreHeader
    $finalContent += $updatedPostHeader | Sort-Object -Unique

    Set-Content -Path $gtignorePath -Value $finalContent
}

if ($entriesToAdd.Count -eq 0 -and $entriesToRemove.Count -eq 0) {
    Write-Log "No changes needed."
}

Write-Log "=== End run ===`n"