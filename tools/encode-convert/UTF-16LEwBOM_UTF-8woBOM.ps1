$sourceFolder = "C:\Games\Chaos-R\01 - Prepped\Sacred Angel - Arcana Rouge - English Translation\utf8\translation\k_others"

Get-ChildItem -Path $sourceFolder -Recurse -Include *.tjs, *.ks | ForEach-Object {
    $filePath = $_.FullName

    # Read raw bytes
    $bytes = [System.IO.File]::ReadAllBytes($filePath)

    # Check and remove UTF-16 LE BOM (0xFF 0xFE)
    if ($bytes[0] -eq 0xFF -and $bytes[1] -eq 0xFE) {
        $bytes = $bytes[2..($bytes.Length - 1)]
    }

    # Decode the bytes as UTF-16 LE (without BOM now)
    $utf16 = [System.Text.Encoding]::Unicode
    $text = $utf16.GetString($bytes)

    # Convert to UTF-8 without BOM
    $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    $utf8Bytes = $utf8NoBom.GetBytes($text)

    # Write UTF-8 (no BOM)
    [System.IO.File]::WriteAllBytes($filePath, $utf8Bytes)

    Write-Host "✅ Fixed + UTF-8 no BOM: $filePath"
}
