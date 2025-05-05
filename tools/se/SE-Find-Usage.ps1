param (
    [string]$seFolder = "C:\Games\Chaos-R\01 - Prepped\Sacred Angel - Arcana Rouge - English Translation\translation\s_se",
    [string]$scriptRoot = "C:\Games\Chaos-R\01 - Prepped\Sacred Angel - Arcana Rouge - English Translation\translation",
    [string]$outputCsv = "se_usage.csv",
    [string]$outputYaml = "se_usage.yaml"
)

$seFiles = Get-ChildItem -Path $seFolder -Filter *.ogg
$scriptFiles = Get-ChildItem -Path $scriptRoot -Recurse -Include *.ks, *.tjs

$results = @()

foreach ($se in $seFiles) {
    $seName = [System.IO.Path]::GetFileNameWithoutExtension($se.Name)
    $found = $false

    foreach ($script in $scriptFiles) {
        $lines = Get-Content $script.FullName
        for ($i = 0; $i -lt $lines.Length; $i++) {
            if ($lines[$i] -match [regex]::Escape($seName)) {
                $found = $true
                $results += [pscustomobject]@{
                    SE_Name     = $seName
                    Found       = "Yes"
                    ScriptFile  = $script.FullName
                    LineNumber  = $i + 1
                    LinePreview = $lines[$i].Trim()
                }
            }
        }
    }

    if (-not $found) {
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

# Export YAML
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
Write-Host "CSV output: $outputCsv"
Write-Host "YAML output: $outputYaml"
