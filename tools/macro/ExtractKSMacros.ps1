# Requires PowerShell 5.1+
# This script scans .ks files in a directory for [macro name=...] declarations
# Handles UTF-16LE with BOM, ignores commented macros, outputs macro_index.md and k_others.md

$sourcePath = Read-Host "Enter path to folder containing .ks files"
$outputPath = $sourcePath  # You can change this if needed

# Pattern to match macros, excluding those commented out
$macroRegex = '^(?!\s*;).*?\[macro\s+name\s*=\s*([a-zA-Z0-9_\p{IsHiragana}\p{IsKatakana}\p{IsCJKUnifiedIdeographs}]+)'

# Dictionary for known descriptions
$descriptions = @{
    "bgm" = "Plays background music."
    "se" = "Plays sound effect."
    "ruby_c" = "Displays furigana text."
    "cgthum_int" = "Clears CG thumbnails."
    "vo_aka" = "Voice for character Akane."
    # Add more known descriptions here
}

# Category rules
$categories = @{
    "Sound and Music" = @("bgm", "se", "vo_", "bgv_", "chvoice", "stopse", "movie")
    "Character/Name Handling" = @("name_", "主人公", "std_", "face_win", "chara_", "ChrSet")
    "Visual Effects" = @("blur", "quake", "フラ", "zoom", "trans", "extrans")
    "CG and UI Elements" = @("cgview", "button", "thumbnail", "dialog", "scene", "sel", "pagebt")
    "System and Debug" = @("セーブ", "sys_", "デバッグ", "returntitle")
    "Miscellaneous" = @()
}

$macros = @()

Get-ChildItem -Path $sourcePath -Filter "*.ks" -Recurse | ForEach-Object {
    $file = $_.FullName
    $lines = Get-Content -Path $file -Encoding Unicode
    for ($i = 0; $i -lt $lines.Length; $i++) {
        $line = $lines[$i]
        if ($line -match $macroRegex) {
            $macroName = $matches[1]
            $macros += [PSCustomObject]@{
                File = $_.Name
                Line = $i + 1
                Macro = $macroName
                Description = if ($descriptions.ContainsKey($macroName)) { $descriptions[$macroName] } else { "(Description needed)" }
            }
        }
    }
}

# Output macro_index.md
$macroIndex = "# Macro Index`n`n## Table of Contents"
$macrosGrouped = $macros | Group-Object File | Sort-Object Name
foreach ($group in $macrosGrouped) {
    $anchor = ($group.Name -replace '[._]', '').ToLower()
    $macroIndex += "`n- [${group.Name}](#${anchor})"
}

foreach ($group in $macrosGrouped) {
    $macroIndex += "`n`n## $($group.Name)"
    foreach ($entry in $group.Group | Sort-Object Macro) {
        $macroIndex += "`n- [`$($entry.Macro)`](#${($entry.Macro -replace '[^a-zA-Z0-9]', '').ToLower()}) (Line $($entry.Line))"
    }
}
$macroIndex | Out-File -FilePath (Join-Path $outputPath "macro_index.md") -Encoding UTF8

# Output k_others.md with categorization
$macroDocs = "# Macro Glossary for k_others`n"
foreach ($category in $categories.Keys) {
    $macroDocs += "`n## $category"
    $filtered = $macros | Where-Object {
        foreach ($pattern in $categories[$category]) {
            if ($_.Macro -like "$pattern*") { return $true }
        }
        return $false
    }
    foreach ($entry in $filtered | Sort-Object Macro) {
        $macroDocs += "`n### `$($entry.Macro)`n**Source:** `$($entry.File)` (Line $($entry.Line))  `n**Description:** $($entry.Description)`n"
    }
}

# Catch all uncategorized
$categorized = $categories.Values | ForEach-Object { $_ } | ForEach-Object { $_ }
$uncategorized = $macros | Where-Object {
    $macro = $_.Macro
    -not ($categories.Values | ForEach-Object { $_ } | Where-Object { $macro -like "$_*" })
}
if ($uncategorized.Count -gt 0) {
    $macroDocs += "`n## Miscellaneous"
    foreach ($entry in $uncategorized | Sort-Object Macro) {
        $macroDocs += "`n### `$($entry.Macro)`n**Source:** `$($entry.File)` (Line $($entry.Line))  `n**Description:** $($entry.Description)`n"
    }
}

$macroDocs | Out-File -FilePath (Join-Path $outputPath "k_others.md") -Encoding UTF8

Write-Host "✅ Documentation complete! Files saved to: $outputPath" -ForegroundColor Green
