Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'Advanced.designer.ps1')

#Get Variables
$VariableAdvancedBeep = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name Beep
$VariableAdvancedDoubleClickHeight = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name DoubleClickHeight
$VariableAdvancedDoubleClickSpeed = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name DoubleClickSpeed
$VariableAdvancedDoubleClickWidth = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name DoubleClickWidth
$VariableAdvancedExtendedSounds = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name ExtendedSounds
$VariableAdvancedMouseHoverHeight = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseHoverHeight
$VariableAdvancedMouseHoverTime = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseHoverTime
$VariableAdvancedMouseHoverWidth = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseHoverWidth
$VariableAdvancedMouseSensitivity = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseSensitivity
$VariableAdvancedMouseSpeed = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseSpeed
$VariableAdvancedMouseThreshold1 = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseThreshold1
$VariableAdvancedMouseThreshold2 = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseThreshold2
$VariableAdvancedMouseTrails = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseTrails
$VariableAdvancedSmoothMouseXCurve = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name SmoothMouseXCurve
$VariableAdvancedSmoothMouseYCurve = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name SmoothMouseYCurve
$VariableAdvancedSnapToDefaultButton = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name SnapToDefaultButton
$VariableAdvancedSwapMouseButtons = Get-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name SwapMouseButtons

#Set Variables to Form
    $ComboBoxAdvancedBeep.Items.Add("Yes")
    $ComboBoxAdvancedBeep.Items.Add("No")
    if ($VariableAdvancedBeep.Beep -eq "Yes"){
        $ComboBoxAdvancedBeep.SelectedItem = "Yes"
    } else {
        $ComboBoxAdvancedBeep.SelectedItem = "No"
    }
$TextBoxAdvancedDoubleClickHeight.Text = $VariableAdvancedDoubleClickHeight.DoubleClickHeight
$TextBoxAdvancedDoubleClickSpeed.Text = $VariableAdvancedDoubleClickSpeed.DoubleClickSpeed
$TextBoxAdvancedDoubleClickWidth.Text = $VariableAdvancedDoubleClickWidth.DoubleClickWidth
$TextBoxAdvancedExtendedSounds.Text = $VariableAdvancedExtendedSounds.ExtendedSounds
$TextBoxAdvancedMouseHoverHeight.Text = $VariableAdvancedMouseHoverHeight.MouseHoverHeight
$TextBoxAdvancedMouseHoverTime.Text = $VariableAdvancedMouseHoverTime.MouseHoverTime
$TextBoxAdvancedMouseHoverWidth.Text = $VariableAdvancedMouseHoverWidth.MouseHoverWidth
$TextBoxAdvancedMouseSensitivity.Text = $VariableAdvancedMouseSensitivity.MouseSensitivity
$TextBoxAdvancedMouseSpeed.Text = $VariableAdvancedMouseSpeed.MouseSpeed
$TextBoxAdvancedMouseThreshold1.Text = $VariableAdvancedMouseThreshold1.MouseThreshold1
$TextBoxAdvancedMouseThreshold2.Text = $VariableAdvancedMouseThreshold2.MouseThreshold2
$TextBoxAdvancedMouseTrails.Text = $VariableAdvancedMouseTrails.MouseTrails
$TextBoxAdvancedSmoothMouseXCurve.Text = $VariableAdvancedSmoothMouseXCurve.SmoothMouseXCurve
$TextBoxAdvancedMouseYCurve.Text = $VariableAdvancedSmoothMouseYCurve.SmoothMouseYCurve
$TextBoxAdvancedSnapToDefaultButton.Text = $VariableAdvancedSnapToDefaultButton.SnapToDefaultButton
$TextBoxAdvancedSwapMouseButtons.Text = $VariableAdvancedSwapMouseButtons.SwapMouseButtons


function Set-AdvancedVariables{
    $AcceptChanges = [System.Windows.Forms.MessageBox]::Show("Bist du dir sicher, dass du die Änderungen Übernehmen willst.","TGF Mouse Tuning Pack 2.0","YesNo")
    $AcceptChanges
    if ($AcceptChanges -eq "Yes"){
        $SavedDoubleClickHeight = $TextBoxAdvancedDoubleClickHeight.Text
        $SavedDoubleclickSpeed = $TextBoxAdvancedDoubleClickSpeed.Text
        $SavedDoubleClickWidth = $TextBoxAdvancedDoubleClickWidth.Text
        $SavedExtendedSounds = $TextBoxAdvancedExtendedSounds.Text
        $SavedMouseHoverHeight = $TextBoxAdvancedMouseHoverHeight.Text
        $SavedMouseHoverTime = $TextBoxAdvancedMouseHoverTime.Text
        $SavedMouseHoverWidth = $TextBoxAdvancedMouseHoverWidth.Text
        $SavedMouseSensitivity = $TextBoxAdvancedMouseSensitivity.Text
        $SavedMouseSpeed = $TextBoxAdvancedMouseSpeed.Text
        $SavedMouseThreshold1 = $TextBoxAdvancedMouseThreshold1.Text
        $SavedMouseThreshold2 = $TextBoxAdvancedMouseThreshold2.Text
        $SavedMouseTrails = $TextBoxAdvancedMouseTrails.Text 
        $SavedSmoothMouseXCurve = $TextBoxAdvancedSmoothMouseXCurve.Text
        $SavedSmoothMouseYCurve = $TextBoxAdvancedMouseYCurve.Text
        $SavedSnapToDefaultButton = $TextBoxAdvancedSnapToDefaultButton.Text
        $SavedSwapMouseButtons = $TextBoxAdvancedSwapMouseButtons.Text

        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "DoubleClickHeight" -Value $SavedDoubleClickHeight -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "DoubleClickSpeed" -Value $SavedDoubleClickSpeed -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "DoubleClickWidth" -Value $SavedDoubleClickWidth -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "ExtendedSounds" -Value $SavedExtendedSounds -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseHoverHeight" -Value $SavedMouseHoverHeight -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseHoverTime" -Value $SavedMouseHoverTime -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseHoverWidth" -Value $SavedMouseHoverWidth -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSensitivity" -Value $SavedMouseSensitivity -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSpeed" -Value $SavedMouseSpeed -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold1" -Value $SavedMouseThreshold1 -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold2" -Value $SavedMouseThreshold2 -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseTrails" -Value $SavedMouseTrails -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "SmoothMouseXCurve" -Value $SavedSmoothMouseXCurve -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "SmoothMouseYCurve" -Value $SavedSmoothMouseYCurve -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "SnapToDefaultButtons" -Value $SavedSnapToDefaultButton -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "SwapMouseButtons" -Value $SavedSwapMouseButtons
    } else {}
}
$ButtonAdvancedApply.Add_Click{(Set-AdvancedVariables)}

$FormAdvanced.ShowDialog()