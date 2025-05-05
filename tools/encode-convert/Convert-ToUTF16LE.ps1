$sourceFolder = "C:\Games\Chaos-R\01 - Prepped\02 - krkrz UTF-16LE\data\k2compat"

$sourceEncoding = [System.Text.Encoding]::GetEncoding("UTF-8")
$utf16leEncoding = New-Object System.Text.UnicodeEncoding($false, $false)  # LE, no BOM

$files = Get-ChildItem -Path $sourceFolder -Recurse -File -Include *.ks, *.tjs

foreach ($file in $files) {
    try {
        $content = [System.IO.File]::ReadAllText($file.FullName, $sourceEncoding)
        $bytes = $utf16leEncoding.GetBytes($content)

        # Manually prepend UTF-16LE BOM (FF FE)
        $bom = [byte[]](0xFF, 0xFE)
        $output = $bom + $bytes

        [System.IO.File]::WriteAllBytes($file.FullName, $output)
        Write-Host "Converted to UTF-16LE with BOM: $($file.FullName)"
    } catch {
        Write-Warning "Failed to convert $($file.FullName): $_"
    }
}


