
$root = "C:\Games\Chaos-R\01 - Prepped\Sacred Angel - Arcana Rouge - English Translation"
$hashes = @{}

Get-ChildItem -Path $root -Recurse -Filter *.tjs | ForEach-Object {
    $path = $_.FullName
    $sha1 = Get-FileHash -Path $path -Algorithm SHA1
    [PSCustomObject]@{
        FilePath = $path
        FileName = $_.Name
        SHA1Hash = $sha1.Hash
    }
} | Sort-Object FileName | Format-Table -AutoSize
