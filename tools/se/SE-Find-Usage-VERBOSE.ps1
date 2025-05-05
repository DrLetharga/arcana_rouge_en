param (
    [string]$seFolder = "C:\Games\Chaos-R\01 - Prepped\Sacred Angel - Arcana Rouge - English Translation\translation\s_se",
    [string]$scriptRoot = "C:\Games\Chaos-R\01 - Prepped\Sacred Angel - Arcana Rouge - English Translation\translation",
    [string]$outputCsv = "se_usage.csv",
    [string]$outputYaml = "se_usage.yaml"
)

# Ensure powershell-yaml module is installed
if (-not (Get-Module -ListAvailable -Name powershell-yaml)) {
    Write-Host "📦 'powershell-yaml' module not found. Installing..." -ForegroundColor Cyan
    try {
        Install-Module -Name powershell-yaml -Scope CurrentUser -Force -AllowClobber
        Write-Host "✅ 'powershell-yaml' installed successfully." -ForegroundColor Green
    }
    catch {
        Write-Host "❌ Failed to install 'powershell-yaml'. Please run PowerShell as Administrator if needed." -ForegroundColor Red
        exit 1
    }
}
else {
    Write-Host "✅ 'powershell-yaml' module is already installed." -ForegroundColor Green
}

Import-Module powershell-yaml

$seFiles = Get-ChildItem -Path $seFolder -Include *.ogg, *.wav -Recurse
$scriptFiles = Get-ChildItem -Path $scriptRoot -Recurse -Include *.ks, *.tjs
$totalSE = $seFiles.Count
$results = @()

$i = 0
foreach ($se in $seFiles) {
    $i++
    $seName = [System.IO.Path]::GetFileNameWithoutExtension($se.Name)
    $found = $false

    Write-Progress -Activity "Scanning SE Usage" -Status "[$i/$totalSE] $seName" -PercentComplete (($i / $totalSE) * 100)
    Write-Host "`n🔍 Searching for SE: $seName"

    foreach ($script in $scriptFiles) {
        Write-Host "   └─ In file: $($script.Name)"
        $lines = Get-Content $script.FullName
        for ($lineNum = 0; $lineNum -lt $lines.Length; $lineNum++) {
            if ($lines[$lineNum] -match [regex]::Escape($seName)) {
                $found = $true
                $matchLine = $lines[$lineNum].Trim()
                Write-Host "      ✅ Match at line $($lineNum + 1): $matchLine"

                $results += [pscustomobject]@{
                    SE_Name     = $seName
                    Found       = "Yes"
                    ScriptFile  = $script.FullName
                    LineNumber  = $lineNum + 1
                    LinePreview = $matchLine
                }
            }
        }
    }

    if (-not $found) {
        Write-Host "   ❌ $seName not found in any scripts." -ForegroundColor Yellow
        $results += [pscustomobject]@{
            SE_Name     = $seName
            Found       = "No"
            ScriptFile  = ""
            LineNumber  = ""
            LinePreview = ""
        }
    }
}

# Export CSV
$results | Export-Csv -Path $outputCsv -NoTypeInformation -Encoding UTF8

# Export YAML (grouped)
$grouped = $results | Group-Object SE_Name
$yaml = @()

foreach ($group in $grouped) {
    $entry = [ordered]@{
        SE_Name = $group.Name
        Used    = $group.Group[0].Found -eq "Yes"
    }

    if ($entry.Used) {
        $entry.Usages = @()
        foreach ($match in $group.Group) {
            $entry.Usages += [ordered]@{
                ScriptFile  = $match.ScriptFile
                LineNumber  = $match.LineNumber
                LinePreview = $match.LinePreview
            }
        }
    }

    $yaml += $entry
}

$yaml | ConvertTo-Yaml | Set-Content -Path $outputYaml -Encoding UTF8

Write-Host "`n✅ SE usage scan complete."
Write-Host "📄 CSV: $outputCsv"
Write-Host "📄 YAML: $outputYaml"
