#Created by MinersWin
#TGF Mouse Tuning Pack 2.0
#https://tuning-pack.de
#01.10.2020
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
###################################################################################
#Set Global Variables
$LabelMain.Text = "TGF Mouse Tuning Pack 2.0"
$LabelCreator.Text = "by MinersWin"
$FormMousePack.Text = "TGF Mouse Tuning Pack 2.0"

$CheckBoxRegBackup.Checked = $true
$CheckBoxRestorePoint.Checked = $true
$CheckBoxMouseAccelerationFix.Checked = $true

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

$MouseSpeed = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseSensitivity
$TrackBarMouseSensitivity.Value = $MouseSpeed.MouseSensitivity

###################################################################################
#Buttons

#LogoButton
$PictureBox1.Add_Click({About})

#CloseButton
$ButtonExit.Add_Click{($FormMousePack.Close())}

#Detect Scale
$ButtonDetect.Add_Click{(.\Detect_Scale.ps1)}

#Language Buttons
$ButtonGerman.Add_Click{(German)}
$ButtonEnglish.Add_Click{(English)}

#Help Button
$ButtonHelp.Add_Click{
  Write-Host ""
}

$LabelMain.Add_Click{
  $AdvancedYoN = [System.Windows.Forms.MessageBox]::Show("Go to Advanced Settings?","TGF Mouse Tuning Pack 2.0","YesNO")
  if ($AdvancedYoN -eq "Yes"){
    ./Advanced/Advanced.ps1
  }
}

#Make Tweaks
$ButtonLetsGo.Add_Click{

    #Create RecoveryPoint
    if ($CheckBoxRestorePoint.Checked){
        wmic /namespace:\\root\default path SystemRestore call Enable C:\
        Write-Host "Die erstellung von Wiederherstellungspunkten wurde aktiviert"
        Checkpoint-Computer -Description "TGF_Mouse_Tuning_Pack_2.0-$(Get-Date)"
        $Date = Get-Date
        Write-Host "Der Wiederherstellungspunkt wurde erstellt. Er trägt den Namen: TGF_Mouse_Tuning_Pack_2.0-$(Get-Date)" -ForegroundColor Green
    }
    if ($CheckBoxRegBackup.Checked){
        if ($Language -eq "de-DE"){
            $Backup = [System.Windows.Forms.MessageBox]::Show("Ein Backup der Registry wird ausgeführt. Eine Normale Windows Registry ist im Normalfall ca. 500mb Groß. Das Backup wird unter C:\RegBack\ Gespeichert.","TGF Mouse Tuning Pack 2.0 by MinersWin",'OK','Info')
        } else {
            $Backup = [System.Windows.Forms.MessageBox]::Show("The registry is backed up. A normal Windows registry is usually about 500mb in size. The backup is saved under C:\RegBack\.","TGF Mouse Tuning Pack 2.0 by MinersWin",'OK','Info')
        }
        mkdir C:\RegBack\        
        Write-Host "Ein Backup der Registry wird ausgeführt.... Eine Normale Windows Registry ist im Normalfall ca. 500mb Groß. Das Backup wird unter C:\RegBack\ Gespeichert." -ForegroundColor Green
        reg export HKCR C:\RegBack\HKLM.Reg /y
        reg export HKCU C:\RegBack\HKCU.Reg /y
        reg export HKLM C:\RegBack\HKCR.Reg /y
        reg export HKU C:\RegBack\HKU.Reg /y
        reg export HKCC C:\RegBackHKCC.Reg /y
    }

  if ($CheckBoxMouseAccelerationFix.Checked){

    if ($RadioButton100.Checked){$Scale = 100}elseif($RadioButton125.Checked){$Scale = 125}elseif($RadioButton150.Checked){$Scale = 150}elseif($RadioButton175.Checked){$Scale = 175}elseif($RadioButton200.Checked){$Scale = 200}elseif($RadioButton225.Checked){$Scale = 225}elseif($RadioButton250.Checked){$Scale = 250}elseif($RadioButton300.Checked){$Scale = 300}elseif($RadioButton350.Checked){$Scale = 350}else{$Scale = 100}

    switch($Scale){
      100 {Acceleration_100}
      125 {Acceleration_125}
      150 {Acceleration_150}
      175 {Acceleration_175}
      200 {Acceleration_200}
      225 {Acceleration_225}
      250 {Acceleration_250}
      300 {Acceleration_300}
      350 {Acceleration_350}
      default {Acceleration_Default}
    }
  }
  [int]$Speed=$TrackBarMouseSensitivity.Value
  $MethodDefinition = @"
    [DllImport("user32.dll", EntryPoint = "SystemParametersInfo")]
    public static extern bool SystemParametersInfo(uint uiAction, uint uiParam, uint pvParam, uint fWinIni);
"@
  $User32Set = Add-Type -MemberDefinition $MethodDefinition -Name "User32Set" -Namespace Win32Functions -PassThru
  $User32Set::SystemParametersInfo(0x0071,0,$Speed,0) | Out-Null
  Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseSensitivity -Value $Speed
}


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

  $CheckBoxMouseAccelerationFix.Text = "Mausbeschleunigungs Fix"
  $ButtonExit.Text = "Beenden"
  $ButtonDetect.Text = "Erkennen"

  $CheckBoxRestorePoint.Text = "Wiederherstellungspunkt"
  $CheckBoxRegBackup.Text = "Registry Backup"
  $CheckBoxSnap.Text = "Snappe auf Standart Knöpfe"
  $CheckBoxMouseSwap.Text = "Mausbuttons tauschen"
  [System.Windows.Forms.MessageBox]::Show("Deutsches Sprachpacket ausgewählt.","TGF Maus Tuning Pack 2.0","OK","Info")
  $Language = "de-DE"
}

#English
function English{
  $LabelMain.Text = "TGF Mouse Tuning Pack 2.0"
  $LabelCreator.Text = "by MinersWin"

  $CheckBoxMouseAccelerationFix.Text = "Mouse Acceleration Fix"
  $ButtonExit.Text = "Exit"
  $ButtonDetect.Text = "Detect"

  $CheckBoxRestorePoint.Text = "System Restore Point"
  $CheckBoxRegBackup.Text = "Registry Backup"
  [System.Windows.Forms.MessageBox]::Show("English Languagepack has been applied.","TGF Mouse Tuning Pack 2.0","OK","Info")
  $Language = "en-EN"
}

################################################################################################
#Actual Mouse Acceleration Fix
function Acceleration_Default{
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,15,6e,00,00,00,00,00,00,00,40,01,00,00,00,00,00,29,dc,03,00,00,00,00,00,00,00,28,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,fd,11,01,00,00,00,00,00,00,24,04,00,00,00,00,00,00,fc,12,00,00,00,00,00,00,c0,bb,01,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,15,6e,00,00,00,00,00,00,00,40,01,00,00,00,00,00,29,dc,03,00,00,00,00,00,00,00,28,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,fd,11,01,00,00,00,00,00,00,24,04,00,00,00,00,00,00,fc,12,00,00,00,00,00,00,c0,bb,01,00,00,00,00 -ErrorAction SilentlyContinue
  Write-Host "Default Acceleration"
}
function Acceleration_100{
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "MouseSensitivity" -Value 10 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,C0,CC,0C,00,00,00,00,00,80,99,19,00,00,00,00,00,40,66,26,00,00,00,00,00,00,33,33,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,C0,CC,0C,00,00,00,00,00,80,99,19,00,00,00,00,00,40,66,26,00,00,00,00,00,00,33,33,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseSpeed" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold1" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold2" -Value 0 -ErrorAction SilentlyContinue
  Write-Host "100% Monitor Scale Acceleration"
}
function Acceleration_125{
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "MouseSensitivity" -Value 10 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,00,00,10,00,00,00,00,00,00,00,20,00,00,00,00,00,00,00,30,00,00,00,00,00,00,00,40,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,00,00,10,00,00,00,00,00,00,00,20,00,00,00,00,00,00,00,30,00,00,00,00,00,00,00,40,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseSpeed" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold1" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold2" -Value 0 -ErrorAction SilentlyContinue
  Write-Host "125% Monitor Scale Acceleration"
}
function Acceleration_150{
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "MouseSensitivity" -Value 10 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,30,33,13,00,00,00,00,00,60,66,26,00,00,00,00,00,90,99,39,00,00,00,00,00,C0,CC,4C,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,30,33,13,00,00,00,00,00,60,66,26,00,00,00,00,00,90,99,39,00,00,00,00,00,C0,CC,4C,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseSpeed" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold1" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold2" -Value 0 -ErrorAction SilentlyContinue
  Write-Host "150% Monitor Scale Acceleration"
}
function Acceleration_175{
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "MouseSensitivity" -Value 10 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,60,66,16,00,00,00,00,00,C0,CC,2C,00,00,00,00,00,20,33,43,00,00,00,00,00,80,99,59,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,60,66,16,00,00,00,00,00,C0,CC,2C,00,00,00,00,00,20,33,43,00,00,00,00,00,80,99,59,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseSpeed" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold1" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold2" -Value 0 -ErrorAction SilentlyContinue
  Write-Host "175% Monitor Scale Acceleration"
}
function Acceleration_200{
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "MouseSensitivity" -Value 10 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,90,99,19,00,00,00,00,00,20,33,33,00,00,00,00,00,B0,CC,4C,00,00,00,00,00,40,66,66,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,90,99,19,00,00,00,00,00,20,33,33,00,00,00,00,00,B0,CC,4C,00,00,00,00,00,40,66,66,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseSpeed" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold1" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold2" -Value 0 -ErrorAction SilentlyContinue
  Write-Host "200% Monitor Scale Acceleration"
}
function Acceleration_225{
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "MouseSensitivity" -Value 10 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,C0,CC,1C,00,00,00,00,00,80,99,39,00,00,00,00,00,40,66,56,00,00,00,00,00,00,33,73,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,C0,CC,1C,00,00,00,00,00,80,99,39,00,00,00,00,00,40,66,56,00,00,00,00,00,00,33,73,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseSpeed" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold1" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold2" -Value 0 -ErrorAction SilentlyContinue
  Write-Host "225% Monitor Scale Acceleration"
}
function Acceleration_250{
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "MouseSensitivity" -Value 10 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,00,00,20,00,00,00,00,00,00,00,40,00,00,00,00,00,00,00,60,00,00,00,00,00,00,00,80,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,00,00,20,00,00,00,00,00,00,00,40,00,00,00,00,00,00,00,60,00,00,00,00,00,00,00,80,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseSpeed" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold1" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold2" -Value 0 -ErrorAction SilentlyContinue
  Write-Host "250% Monitor Scale Acceleration"
}
function Acceleration_300{
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "MouseSensitivity" -Value 10 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,60,66,26,00,00,00,00,00,C0,CC,4C,00,00,00,00,00,20,33,73,00,00,00,00,00,80,99,99,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,60,66,26,00,00,00,00,00,C0,CC,4C,00,00,00,00,00,20,33,73,00,00,00,00,00,80,99,99,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value 00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseSpeed" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold1" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold2" -Value 0 -ErrorAction SilentlyContinue
  Write-Host "300% Monitor Scale Acceleration"
}
function Acceleration_350{
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "MouseSensitivity" -Value 10 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,C0,CC,2C,00,00,00,00,00,80,99,59,00,00,00,00,00,40,66,86,00,00,00,00,00,00,33,B3,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Mouse" -Name "SmoothMouseYCurve"-Value  00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value 00,00,00,00,00,00,00,00,C0,CC,2C,00,00,00,00,00,80,99,59,00,00,00,00,00,40,66,86,00,00,00,00,00,00,33,B3,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "SmoothMouseYCurve"-Value  00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseSpeed" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold1" -Value 0 -ErrorAction SilentlyContinue
  Set-ItemProperty -Path "HKEY_USERS\.DEFAULT\Control Panel\Mouse" -Name "MouseThreshold2" -Value 0 -ErrorAction SilentlyContinue
  Write-Host "350% Monitor Scale Acceleration"
}

DetectScaleAddType
Detect_Scale
$FormMousePack.ShowDialog()
