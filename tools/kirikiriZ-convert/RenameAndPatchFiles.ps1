param (
    [string]$TargetRoot = ".",
    [string]$MappingFile = "RenameMap.csv"
)

$TargetRoot = (Resolve-Path $TargetRoot).ToString()
$backupRoot = Join-Path $TargetRoot "Backup"
$logPath = Join-Path $TargetRoot "RenameLog.txt"
$log = @()

# Ensure backup folder exists
if (-not (Test-Path $backupRoot)) {
    New-Item -ItemType Directory -Path $backupRoot | Out-Null
}

# Load rename map (force UTF-8 with BOM)
$map = @{}
Import-Csv -Path $MappingFile -Encoding UTF8 | ForEach-Object {
    $map[$_.OldName.Trim()] = $_.NewName.Trim()
}

# Step 1: Rename matching files (using byte comparison)
foreach ($entry in $map.GetEnumerator()) {
    Write-Host "Looking for: $($entry.Key)"
    $foundFile = $false

    $oldPath = Get-ChildItem -Path $TargetRoot -Recurse -File | ForEach-Object {
        if ($_.Name -eq $entry.Key) {
            Write-Host "Found file: $($_.FullName)"
            $foundFile = $true
            return $_
        }
    }

    if ($foundFile) {
        $relativePath = $oldPath.FullName.Substring($TargetRoot.Length).TrimStart('\\', '/')
        $backupPath = Join-Path $backupRoot $relativePath

        New-Item -ItemType Directory -Path (Split-Path $backupPath) -Force | Out-Null
        Copy-Item $oldPath.FullName -Destination $backupPath -Force

        $newPath = Join-Path $oldPath.DirectoryName $entry.Value
        Rename-Item -Path $oldPath.FullName -NewName $entry.Value
        $log += "Renamed: $($entry.Key) → $($entry.Value)"
    } else {
        $log += "File not found: $($entry.Key)"
    }
}

# Step 2: Replace references in .ks and .tjs files
$scriptFiles = Get-ChildItem -Path $TargetRoot -Recurse -File -Include *.ks, *.tjs

foreach ($file in $scriptFiles) {
    $content = Get-Content $file.FullName -Raw
    $originalContent = $content
    $updated = $false

    foreach ($entry in $map.GetEnumerator()) {
        if ($content -like "*$($entry.Key)*") {
            $content = $content -replace [regex]::Escape($entry.Key), $entry.Value
            $updated = $true
        }
    }

    if ($updated -and $content -ne $originalContent) {
        $relativePath = $file.FullName.Substring($TargetRoot.Length).TrimStart('\\', '/')
        $backupPath = Join-Path $backupRoot $relativePath

        New-Item -ItemType Directory -Path (Split-Path $backupPath) -Force | Out-Null
        Copy-Item $file.FullName -Destination $backupPath -Force

        Set-Content -Path $file.FullName -Value $content -Encoding Byte
        $log += "Updated references in: $($file.FullName)"
    }
}

# Save the log
$log | Out-File -FilePath $logPath -Encoding UTF8
Write-Host "✅ Done. Backup saved to '$backupRoot', log saved to '$logPath'"
