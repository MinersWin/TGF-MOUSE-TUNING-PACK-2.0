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


$FormAdvanced.ShowDialog()