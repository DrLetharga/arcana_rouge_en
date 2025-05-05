
$root = "C:\Games\Chaos-R\01 - Prepped\Sacred Angel - Arcana Rouge - English Translation\translation"
$patterns = @('execStorage', 'require')

Get-ChildItem -Path $root -Recurse -Include *.tjs | ForEach-Object {
    foreach ($pattern in $patterns) {
        $matches = Select-String -Path $_.FullName -Pattern $pattern
        if ($matches) {
            foreach ($match in $matches) {
                [PSCustomObject]@{
                    File      = $match.Path
                    Line      = $match.Line.Trim()
                    LineNumber = $match.LineNumber
                    Pattern    = $pattern
                }
            }
        }
    }
} | Sort-Object File, LineNumber | Format-Table -AutoSize
