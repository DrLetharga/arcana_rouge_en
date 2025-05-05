# Set the root folder (current directory by default)
$root = "C:\Games\Chaos-R\01 - Prepped\02 - krkrz UTF-16LE"

# Regex pattern for Japanese characters (Hiragana, Katakana, Kanji)
$jpCharPattern = '[\u3040-\u30FF\u4E00-\u9FFF]'

# Get all files recursively
$files = Get-ChildItem -Path $root -Recurse -File

foreach ($file in $files) {
    if ($file.Name -match $jpCharPattern) {
        Write-Output $file.FullName
    }
}
