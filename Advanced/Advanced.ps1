Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'Advanced.designer.ps1')
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
$FormAdvanced.ShowDialog()