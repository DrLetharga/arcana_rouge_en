<#
.SYNOPSIS
    Composes a final character sprite using body, face, and optional overlay images.

.DESCRIPTION
    This script uses ImageMagick to layer transparent PNGs for a final composite.
    Intended for use in the Tools folder, relative to your sprite directory.

.PARAMETER Body
    Path to the body image PNG

.PARAMETER Face
    Path to the face image PNG

.PARAMETER Overlay
    (Optional) Path to an additional part or semen overlay

.PARAMETER Output
    Output PNG path

.EXAMPLE
    .\ComposeSprite.ps1 -Body "../source/g_std/ch01/ch01_m_base_d1_p1.png" `
                        -Face "../source/g_std/ch01/ch01_m_face_a1_p1_121.png" `
                        -Overlay "../source/g_std/ch04/ch04_m_face_a1_seieki_add1.png" `
                        -Output "output\ch01_composite.png"
#>


param (
    [string]$Body,
    [string]$Face,
    [string]$Overlay = "",
    [string]$Output = "composite.png"
)

# Confirm ImageMagick's `magick` command is available
if (-not (Get-Command "magick" -ErrorAction SilentlyContinue)) {
    Write-Error "ImageMagick 'magick' is not installed or not in PATH."
    exit 1
}

# Construct command
if ($Overlay -ne "") {
    magick convert `
        "$Overlay" `
        "$Output"
} else {
    magick convert `
        "$Body" `
        "$Face" -geometry +0+0 -composite `
        "$Output"
}

Write-Host ([char]0x2714) + "Composite created: $Output"
