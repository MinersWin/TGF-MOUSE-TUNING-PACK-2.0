#Created by MinersWin
#TGF Mouse Tuning Pack 2.0
#https://tuning-pack.de
#04.08.2020
Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'GUI.designer.ps1')

function DetectScaleAddType{
Add-Type @'
  using System; 
  using System.Runtime.InteropServices;
  using System.Drawing;
  public class DPI {  
    [DllImport("gdi32.dll")]
    static extern int GetDeviceCaps(IntPtr hdc, int nIndex);
    public enum DeviceCap {
      VERTRES = 10,
      DESKTOPVERTRES = 117
    } 
    public static float scaling() {
      Graphics g = Graphics.FromHwnd(IntPtr.Zero);
      IntPtr desktop = g.GetHdc();
      int LogicalScreenHeight = GetDeviceCaps(desktop, (int)DeviceCap.VERTRES);
      int PhysicalScreenHeight = GetDeviceCaps(desktop, (int)DeviceCap.DESKTOPVERTRES);
      return (float)PhysicalScreenHeight / (float)LogicalScreenHeight;
    }
  }
'@ -ReferencedAssemblies 'System.Drawing.dll'
}

.\Detect_Scale.ps1

###################################################################################
#Set Global Variables
$LabelMain.Text = "TGF Mouse Tuning Pack 2.0"
$LabelCreator.Text = "by MinersWin"
$FormMousePack.Text = "TGF Mouse Tuning Pack 2.0"

#Detect Monitor Scale
function Detect_Scale{
  $Scale = [Math]::round([DPI]::scaling(), 2) * 100
  Write-Output "Scale: $($Scale)"
  switch($Scale){
    100 {$RadioButton100.Checked = $true}
    125 {$RadioButton125.Checked = $true}
    150 {$RadioButton150.Checked = $true}
    175 {$RadioButton175.Checked = $true}
    200 {$RadioButton200.Checked = $true}
    225 {$RadioButton225.Checked = $true}
    250 {$RadioButton250.Checked = $true}
    300 {$RadioButton300.Checked = $true}
    350 {$RadioButton350.Checked = $true}
    default {$RadioButton100.Checked = $true}
  }
}

###################################################################################
#Images

#Favicon
$bitmap = [System.Drawing.Bitmap]::FromFile(".\Images\favicon.ico")
$bitmap.MakeTransparent()
$hicon = $bitmap.GetHicon()
$FormMousePack.Icon = [system.drawing.icon]::FromHandle($hicon)

#Add Logo to PictureBox
$Picture = ".\Images\Logo_v1.png"
$img = [System.Drawing.Image]::Fromfile($Picture)
$PictureBox1.BackgroundImage = $img
$PictureBox1.BackgroundImageLayout = "Stretch"
$PictureBox1.Add_Click({About})

###################################################################################
#Buttons

#Add Mouse Acceleration Fix
$ButtonMouseAccelerationFix.Add_Click{(.\MouseFix\MouseAccelerationFix.ps1)}

#CloseButton
$ButtonExit.Add_Click{($FormMousePack.Close())}

#Detect Scale
$ButtonDetect.Add_Click{(.\Detect_Scale.ps1)}

#Language Buttons
$ButtonGerman.Add_Click{(German)}
$ButtonEnglish.Add_Click{(English)}

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

################################################################################################
#Languages

#German
function German{
  $LabelMain.Text = "TGF Maus Tuning Pack 2.0"
  $LabelCreator.Text = "von Minerswin"

  $ButtonMouseAccelerationFix.Text = "Mausbeschleunigungs Fix"
  $ButtonExit.Text = "Beenden"
  $ButtonDetect.Text = "Erkennen"

  $CheckBoxRestorePoint.Text = "Wiederherstellungspunkt"
  $CheckBoxRegBackup.Text = "Registry Backup"
  [System.Windows.Forms.MessageBox]::Show("Deutsches Sprachpacket ausgewält.","TGF Maus Tuning Pack 2.0","OK","Info")
}

#English
function English{
  $LabelMain.Text = "TGF Mouse Tuning Pack 2.0"
  $LabelCreator.Text = "by MinersWin"

  $ButtonMouseAccelerationFix.Text = "Mouse Acceleration Fix"
  $ButtonExit.Text = "Exit"
  $ButtonDetect.Text = "Detect"

  $CheckBoxRestorePoint.Text = "System Restore Point"
  $CheckBoxRegBackup.Text = "Registry Backup"
  [System.Windows.Forms.MessageBox]::Show("English Languagepack has been applied.","TGF Mouse Tuning Pack 2.0","OK","Info")
}

DetectScaleAddType
$FormMousePack.ShowDialog()