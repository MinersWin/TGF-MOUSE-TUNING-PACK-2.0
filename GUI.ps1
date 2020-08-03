Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'GUI.designer.ps1')
.\Detect_Scale.ps1
$ButtonDetect.Add_Click{(.\Detect_Scale.ps1)}
<#
100 {reg import '.\Windows 10 + 8 TGFMOUSEFIX 100%.reg'}
  125 {reg import '.\Windows 10 + 8 TGFMOUSEFIX 125%.reg'}
  150 {reg import '.\Windows 10 + 8 TGFMOUSEFIX 150%.reg'}
  175 {reg import '.\Windows 10 + 8 TGFMOUSEFIX 175%.reg'}
  200 {reg import '.\Windows 10 + 8 TGFMOUSEFIX 200%.reg'}
  225 {reg import '.\Windows 10 + 8 TGFMOUSEFIX 225%.reg'}
  250 {reg import '.\Windows 10 + 8 TGFMOUSEFIX 250%.reg'}
  300 {reg import '.\Windows 10 + 8 TGFMOUSEFIX 300%.reg'}
  350 {reg import '.\Windows 10 + 8 TGFMOUSEFIX 350%.reg'}
  default {reg import '.\Windows 10 + 8 Standard.reg'}
#>

#Add Logo to PictureBox
$Picture = ".\Images\Logo_v1.png"
$img = [System.Drawing.Image]::Fromfile($Picture)
$PictureBox1.BackgroundImage = $img
$PictureBox1.BackgroundImageLayout = "Stretch"
$PictureBox1.Add_Click({About})

$FormMousePack.ShowDialog()