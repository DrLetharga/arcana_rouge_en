$rootPath = "C:\Path\To\Your\Game"  # <-- Change this to your game folder path
# Define the source folder (edit this path as needed)
$rootPath = "C:\Games\Chaos-R\01 - Prepped\02 - krkrz UTF-8"

$fileTypes = @("*.ks", "*.tjs")

foreach ($ext in $fileTypes) {
    Get-ChildItem -Path $rootPath -Recurse -Filter $ext | ForEach-Object {
        $filePath = $_.FullName
        Write-Host "Processing: $filePath"

        $bytes = [System.IO.File]::ReadAllBytes($filePath)

        if ($bytes.Length -ge 3 -and $bytes[0] -eq 0xEF -and $bytes[1] -eq 0xBB -and $bytes[2] -eq 0xBF) {
            Write-Host " - BOM found, converting..."
            $content = [System.Text.Encoding]::UTF8.GetString($bytes, 3, $bytes.Length - 3)

            # Use UTF8 encoding WITHOUT BOM
            $utf8NoBom = [System.Text.UTF8Encoding]::new($false)
            [System.IO.File]::WriteAllText($filePath, $content, $utf8NoBom)
        } else {
            Write-Host " - No BOM, skipping."
        }
    }
}