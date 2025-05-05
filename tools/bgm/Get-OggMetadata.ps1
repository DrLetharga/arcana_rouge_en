# Requires ffprobe.exe (part of FFmpeg) in PATH or same folder as this script

$oggFolder = "C:\Games\Chaos-R\01 - Prepped\arcana_rouge_en\source\s_bgm"
$outputCsv = "ogg_metadata.csv"

# Write CSV header
"Filename,Duration_sec,Bitrate_kbps" | Out-File -FilePath $outputCsv -Encoding UTF8

# Loop through each .ogg file
Get-ChildItem -Path $oggFolder -Filter *.ogg | Sort-Object Name | ForEach-Object {
    $file = $_.FullName
    $filename = $_.Name

    try {
        $ffprobeOutput = & ffprobe -v error -show_entries format=duration,bit_rate -of default=noprint_wrappers=1:nokey=1 "`"$file`""
        $lines = $ffprobeOutput -split "`n"
        $duration = [math]::Round([double]$lines[0], 2)
        $bitrate = [math]::Round(([double]$lines[1]) / 1000, 1)
        "$filename,$duration,$bitrate" | Out-File -Append -FilePath $outputCsv -Encoding UTF8
    }
    catch {
        "$filename,ERROR,ERROR" | Out-File -Append -FilePath $outputCsv -Encoding UTF8
        Write-Host "Error processing filename: $_"
    }
}

Write-Host "Metadata written to $outputCsv"
