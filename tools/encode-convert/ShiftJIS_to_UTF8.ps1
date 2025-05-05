# Define the source folder (edit this path as needed)
$sourceFolder = "C:\Games\Chaos-R\01 - Prepped\Sacred Angel - Arcana Rouge - English Translation\translation\k_others\std"

# Optional: Uncomment this if you'd prefer to output to a new folder
# $outputFolder = "C:\Games\Chaos-R\01 - Prepped\Sacred Angel - Arcana Rouge - English Translation\source-utf8\k_scenario"
# New-Item -ItemType Directory -Force -Path $outputFolder | Out-Null

# Get all .tjs and .ks files
Get-ChildItem -Path $sourceFolder -Recurse -Include *.tjs, *.ks | ForEach-Object {
    $filePath = $_.FullName

    # Read content as bytes and decode from Shift-JIS
    $content = Get-Content -Path $filePath -Encoding Byte
    $decoded = [Text.Encoding]::GetEncoding("shift_jis").GetString($content)

    # Optional: Set destination path if outputting to another folder
    # $relativePath = $filePath.Substring($sourceFolder.Length)
    # $newPath = Join-Path $outputFolder $relativePath
    # New-Item -ItemType Directory -Path (Split-Path $newPath) -Force | Out-Null

    # Save as UTF-8 WITHOUT BOM
    $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($filePath, $decoded, $utf8NoBom)

    Write-Host "Converted to UTF-8 (no BOM): $filePath"
}
