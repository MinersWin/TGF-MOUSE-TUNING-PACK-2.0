Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'GUI.designer.ps1')
.\Detect_Scale.ps1

#Add Logo to PictureBox
$Picture = ".\Images\Logo_v1.png"
$img = [System.Drawing.Image]::Fromfile($Picture)
$PictureBox1.BackgroundImage = $img
$PictureBox1.BackgroundImageLayout = "Stretch"
$PictureBox1.Add_Click({About})


#Add Mouse Acceleration Fix
$ButtonMouseAccelerationFix.Add_Click{(.\MouseFix\MouseAccelerationFix.ps1)}

#CloseButton
$ButtonExit.Add_Click{($FormMousePack.Close())}

#Detect Scale
$ButtonDetect.Add_Click{(.\Detect_Scale.ps1)}

#About Button
function About {
  # About Form Objects
  $aboutForm          = New-Object System.Windows.Forms.Form
  $aboutFormExit      = New-Object System.Windows.Forms.Button
  $aboutFormImage     = New-Object System.Windows.Forms.PictureBox
  $aboutFormNameLabel = New-Object System.Windows.Forms.Label
  $aboutFormText      = New-Object System.Windows.Forms.Label
  # About Form
  $aboutForm.AcceptButton  = $aboutFormExit
  $aboutForm.CancelButton  = $aboutFormExit
  $aboutForm.ClientSize    = "350, 110"
  $aboutForm.ControlBox    = $false
  $aboutForm.ShowInTaskBar = $false
  $aboutForm.StartPosition = "CenterParent"
  $aboutForm.Text          = "Mouse Tuning Pack 2.0"
  $aboutForm.Add_Load($aboutForm_Load)
  # About PictureBox
  $icon = [System.Drawing.Bitmap]::FromFile('.\Images\favicon.ico')
  $aboutFormImage.Image    = $icon
  $aboutFormImage.Location = "35, 15"
  $aboutFormImage.Size     = "64, 64"
  $aboutFormImage.SizeMode = "StretchImage"
  $aboutForm.Controls.Add($aboutFormImage)
  # About Name Label
  $aboutFormNameLabel.Font     = New-Object Drawing.Font("Microsoft Sans Serif", 9, [System.Drawing.FontStyle]::Bold)
  $aboutFormNameLabel.Location = "110, 20"
  $aboutFormNameLabel.Size     = "200, 18"
  $aboutFormNameLabel.Text     = "Mouse Tuning Pack 2.0"
  $aboutForm.Controls.Add($aboutFormNameLabel)
  # About Text Label
  $aboutFormText.Location = "100, 40"
  $aboutFormText.Size     = "300, 30"
  $aboutFormText.Text     = "          Created by MinersWin `n`r https://www.thegeekfreaks.de"
  $aboutFormText.Add_Click{(explorer https://thegeekfreaks.de)}
  $aboutForm.Controls.Add($aboutFormText)
  # About Exit Button
  $aboutFormExit.Location = "135, 70"
  $aboutFormExit.Text     = "OK"
  $aboutForm.Controls.Add($aboutFormExit)
  [void]$aboutForm.ShowDialog()
} # End About

$FormMousePack.ShowDialog()