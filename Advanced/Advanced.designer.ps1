$FormAdvanced = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$LabelAdvancedBeep = $null
[System.Windows.Forms.ComboBox]$ComboBoxAdvancedBeep = $null
[System.Windows.Forms.Label]$LabelAdvancedDoubleClickHeigh = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedDoubleClickHeight = $null
[System.Windows.Forms.Label]$LabelAdvancedDoubleClickSpeed = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedDoubleClickSpeed = $null
[System.Windows.Forms.Panel]$PanelAdvancedForm = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedSwapMouseButtons = $null
[System.Windows.Forms.Label]$LabelAdvancedSwapMouseButtons = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedSnapToDefaultButton = $null
[System.Windows.Forms.Label]$LabelAdvancedSnapToDefaultButton = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedMouseYCurve = $null
[System.Windows.Forms.Label]$LabelAdvancedSmoothMouseYCurve = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedSmoothMouseXCurve = $null
[System.Windows.Forms.Label]$LabelAdvancedSmoothMouseXCurve = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedMouseTrails = $null
[System.Windows.Forms.Label]$LabelAdvancedMouseTrails = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedMouseThreshold2 = $null
[System.Windows.Forms.Label]$LabelAdvancedMouseThreshold2 = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedMouseThreshold1 = $null
[System.Windows.Forms.Label]$LabelAdvancedMouseThreshold1 = $null
[System.Windows.Forms.Button]$ButtonAdvancedApply = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedMouseSpeed = $null
[System.Windows.Forms.Label]$LabelAdvancedMouseSpeed = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedMouseSensitivity = $null
[System.Windows.Forms.Label]$LabelAdvancedMouseSensitivity = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedMouseHoverWidth = $null
[System.Windows.Forms.Label]$LabelAdvancedMouseHoverWidth = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedMouseHoverTime = $null
[System.Windows.Forms.Label]$LabelAdvancedMouseHoverTime = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedMouseHoverHeight = $null
[System.Windows.Forms.Label]$LabelAdvancedMouseHoverHeight = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedExtendedSounds = $null
[System.Windows.Forms.Label]$LabelAdvancedExtendedSounds = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedDoubleClickWidth = $null
[System.Windows.Forms.Label]$LabelAdvancedDoubleClickWidth = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'Advanced.resources.ps1')
$LabelAdvancedBeep = (New-Object -TypeName System.Windows.Forms.Label)
$ComboBoxAdvancedBeep = (New-Object -TypeName System.Windows.Forms.ComboBox)
$LabelAdvancedDoubleClickHeigh = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedDoubleClickHeight = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedDoubleClickSpeed = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedDoubleClickSpeed = (New-Object -TypeName System.Windows.Forms.TextBox)
$PanelAdvancedForm = (New-Object -TypeName System.Windows.Forms.Panel)
$TextBoxAdvancedMouseThreshold1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedMouseThreshold1 = (New-Object -TypeName System.Windows.Forms.Label)
$ButtonAdvancedApply = (New-Object -TypeName System.Windows.Forms.Button)
$TextBoxAdvancedMouseSpeed = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedMouseSpeed = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedMouseSensitivity = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedMouseSensitivity = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedMouseHoverWidth = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedMouseHoverWidth = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedMouseHoverTime = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedMouseHoverTime = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedMouseHoverHeight = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedMouseHoverHeight = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedExtendedSounds = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedExtendedSounds = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedDoubleClickWidth = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedDoubleClickWidth = (New-Object -TypeName System.Windows.Forms.Label)
$LabelAdvancedMouseThreshold2 = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedMouseThreshold2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedMouseTrails = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedMouseTrails = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedSmoothMouseXCurve = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedSmoothMouseXCurve = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedSmoothMouseYCurve = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedMouseYCurve = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedSnapToDefaultButton = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedSnapToDefaultButton = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedSwapMouseButtons = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedSwapMouseButtons = (New-Object -TypeName System.Windows.Forms.TextBox)
$PanelAdvancedForm.SuspendLayout()
$FormAdvanced.SuspendLayout()
#
#LabelAdvancedBeep
#
$LabelAdvancedBeep.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]0))
$LabelAdvancedBeep.Name = [System.String]'LabelAdvancedBeep'
$LabelAdvancedBeep.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]121,[System.Int32]16))
$LabelAdvancedBeep.TabIndex = [System.Int32]0
$LabelAdvancedBeep.Text = [System.String]'Beep'
$LabelAdvancedBeep.UseCompatibleTextRendering = $true
#
#ComboBoxAdvancedBeep
#
$ComboBoxAdvancedBeep.FormattingEnabled = $true
$ComboBoxAdvancedBeep.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]19))
$ComboBoxAdvancedBeep.Name = [System.String]'ComboBoxAdvancedBeep'
$ComboBoxAdvancedBeep.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$ComboBoxAdvancedBeep.TabIndex = [System.Int32]1
#
#LabelAdvancedDoubleClickHeigh
#
$LabelAdvancedDoubleClickHeigh.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]43))
$LabelAdvancedDoubleClickHeigh.Name = [System.String]'LabelAdvancedDoubleClickHeigh'
$LabelAdvancedDoubleClickHeigh.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]18))
$LabelAdvancedDoubleClickHeigh.TabIndex = [System.Int32]2
$LabelAdvancedDoubleClickHeigh.Text = [System.String]'DoubleClickHeigh'
$LabelAdvancedDoubleClickHeigh.UseCompatibleTextRendering = $true
#
#TextBoxAdvancedDoubleClickHeight
#
$TextBoxAdvancedDoubleClickHeight.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]64))
$TextBoxAdvancedDoubleClickHeight.Name = [System.String]'TextBoxAdvancedDoubleClickHeight'
$TextBoxAdvancedDoubleClickHeight.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedDoubleClickHeight.TabIndex = [System.Int32]3
#
#LabelAdvancedDoubleClickSpeed
#
$LabelAdvancedDoubleClickSpeed.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]88))
$LabelAdvancedDoubleClickSpeed.Name = [System.String]'LabelAdvancedDoubleClickSpeed'
$LabelAdvancedDoubleClickSpeed.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]19))
$LabelAdvancedDoubleClickSpeed.TabIndex = [System.Int32]4
$LabelAdvancedDoubleClickSpeed.Text = [System.String]'DoubleClickSpeed'
$LabelAdvancedDoubleClickSpeed.UseCompatibleTextRendering = $true
#
#TextBoxAdvancedDoubleClickSpeed
#
$TextBoxAdvancedDoubleClickSpeed.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]110))
$TextBoxAdvancedDoubleClickSpeed.Name = [System.String]'TextBoxAdvancedDoubleClickSpeed'
$TextBoxAdvancedDoubleClickSpeed.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedDoubleClickSpeed.TabIndex = [System.Int32]5
#
#PanelAdvancedForm
#
$PanelAdvancedForm.AutoScroll = $true
$PanelAdvancedForm.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedSwapMouseButtons)
$PanelAdvancedForm.Controls.Add($LabelAdvancedSwapMouseButtons)
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedSnapToDefaultButton)
$PanelAdvancedForm.Controls.Add($LabelAdvancedSnapToDefaultButton)
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedMouseYCurve)
$PanelAdvancedForm.Controls.Add($LabelAdvancedSmoothMouseYCurve)
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedSmoothMouseXCurve)
$PanelAdvancedForm.Controls.Add($LabelAdvancedSmoothMouseXCurve)
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedMouseTrails)
$PanelAdvancedForm.Controls.Add($LabelAdvancedMouseTrails)
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedMouseThreshold2)
$PanelAdvancedForm.Controls.Add($LabelAdvancedMouseThreshold2)
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedMouseThreshold1)
$PanelAdvancedForm.Controls.Add($LabelAdvancedMouseThreshold1)
$PanelAdvancedForm.Controls.Add($ButtonAdvancedApply)
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedMouseSpeed)
$PanelAdvancedForm.Controls.Add($LabelAdvancedMouseSpeed)
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedMouseSensitivity)
$PanelAdvancedForm.Controls.Add($LabelAdvancedMouseSensitivity)
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedMouseHoverWidth)
$PanelAdvancedForm.Controls.Add($LabelAdvancedMouseHoverWidth)
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedMouseHoverTime)
$PanelAdvancedForm.Controls.Add($LabelAdvancedMouseHoverTime)
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedMouseHoverHeight)
$PanelAdvancedForm.Controls.Add($LabelAdvancedMouseHoverHeight)
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedExtendedSounds)
$PanelAdvancedForm.Controls.Add($LabelAdvancedExtendedSounds)
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedDoubleClickWidth)
$PanelAdvancedForm.Controls.Add($LabelAdvancedDoubleClickWidth)
$PanelAdvancedForm.Controls.Add($LabelAdvancedBeep)
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedDoubleClickSpeed)
$PanelAdvancedForm.Controls.Add($ComboBoxAdvancedBeep)
$PanelAdvancedForm.Controls.Add($LabelAdvancedDoubleClickSpeed)
$PanelAdvancedForm.Controls.Add($LabelAdvancedDoubleClickHeigh)
$PanelAdvancedForm.Controls.Add($TextBoxAdvancedDoubleClickHeight)
$PanelAdvancedForm.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$PanelAdvancedForm.Name = [System.String]'PanelAdvancedForm'
$PanelAdvancedForm.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]208,[System.Int32]457))
$PanelAdvancedForm.TabIndex = [System.Int32]6
#
#TextBoxAdvancedMouseThreshold1
#
$TextBoxAdvancedMouseThreshold1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]452))
$TextBoxAdvancedMouseThreshold1.Name = [System.String]'TextBoxAdvancedMouseThreshold1'
$TextBoxAdvancedMouseThreshold1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedMouseThreshold1.TabIndex = [System.Int32]7
#
#LabelAdvancedMouseThreshold1
#
$LabelAdvancedMouseThreshold1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]433))
$LabelAdvancedMouseThreshold1.Name = [System.String]'LabelAdvancedMouseThreshold1'
$LabelAdvancedMouseThreshold1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]16))
$LabelAdvancedMouseThreshold1.TabIndex = [System.Int32]23
$LabelAdvancedMouseThreshold1.Text = [System.String]'MouseThreshold1'
$LabelAdvancedMouseThreshold1.UseCompatibleTextRendering = $true
#
#ButtonAdvancedApply
#
$ButtonAdvancedApply.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]734))
$ButtonAdvancedApply.Name = [System.String]'ButtonAdvancedApply'
$ButtonAdvancedApply.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]187,[System.Int32]23))
$ButtonAdvancedApply.TabIndex = [System.Int32]22
$ButtonAdvancedApply.Text = [System.String]'Apply'
$ButtonAdvancedApply.UseCompatibleTextRendering = $true
$ButtonAdvancedApply.UseVisualStyleBackColor = $true
#
#TextBoxAdvancedMouseSpeed
#
$TextBoxAdvancedMouseSpeed.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]409))
$TextBoxAdvancedMouseSpeed.Name = [System.String]'TextBoxAdvancedMouseSpeed'
$TextBoxAdvancedMouseSpeed.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedMouseSpeed.TabIndex = [System.Int32]19
#
#LabelAdvancedMouseSpeed
#
$LabelAdvancedMouseSpeed.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]391))
$LabelAdvancedMouseSpeed.Name = [System.String]'LabelAdvancedMouseSpeed'
$LabelAdvancedMouseSpeed.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]15))
$LabelAdvancedMouseSpeed.TabIndex = [System.Int32]18
$LabelAdvancedMouseSpeed.Text = [System.String]'MouseSpeed'
$LabelAdvancedMouseSpeed.UseCompatibleTextRendering = $true
#
#TextBoxAdvancedMouseSensitivity
#
$TextBoxAdvancedMouseSensitivity.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]367))
$TextBoxAdvancedMouseSensitivity.Name = [System.String]'TextBoxAdvancedMouseSensitivity'
$TextBoxAdvancedMouseSensitivity.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedMouseSensitivity.TabIndex = [System.Int32]17
#
#LabelAdvancedMouseSensitivity
#
$LabelAdvancedMouseSensitivity.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]350))
$LabelAdvancedMouseSensitivity.Name = [System.String]'LabelAdvancedMouseSensitivity'
$LabelAdvancedMouseSensitivity.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]14))
$LabelAdvancedMouseSensitivity.TabIndex = [System.Int32]16
$LabelAdvancedMouseSensitivity.Text = [System.String]'MouseSensitivity'
$LabelAdvancedMouseSensitivity.UseCompatibleTextRendering = $true
#
#TextBoxAdvancedMouseHoverWidth
#
$TextBoxAdvancedMouseHoverWidth.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]326))
$TextBoxAdvancedMouseHoverWidth.Name = [System.String]'TextBoxAdvancedMouseHoverWidth'
$TextBoxAdvancedMouseHoverWidth.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedMouseHoverWidth.TabIndex = [System.Int32]15
#
#LabelAdvancedMouseHoverWidth
#
$LabelAdvancedMouseHoverWidth.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]308))
$LabelAdvancedMouseHoverWidth.Name = [System.String]'LabelAdvancedMouseHoverWidth'
$LabelAdvancedMouseHoverWidth.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]15))
$LabelAdvancedMouseHoverWidth.TabIndex = [System.Int32]14
$LabelAdvancedMouseHoverWidth.Text = [System.String]'MouseHoverWidth'
$LabelAdvancedMouseHoverWidth.UseCompatibleTextRendering = $true
#
#TextBoxAdvancedMouseHoverTime
#
$TextBoxAdvancedMouseHoverTime.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]284))
$TextBoxAdvancedMouseHoverTime.Name = [System.String]'TextBoxAdvancedMouseHoverTime'
$TextBoxAdvancedMouseHoverTime.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedMouseHoverTime.TabIndex = [System.Int32]13
#
#LabelAdvancedMouseHoverTime
#
$LabelAdvancedMouseHoverTime.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]265))
$LabelAdvancedMouseHoverTime.Name = [System.String]'LabelAdvancedMouseHoverTime'
$LabelAdvancedMouseHoverTime.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]16))
$LabelAdvancedMouseHoverTime.TabIndex = [System.Int32]12
$LabelAdvancedMouseHoverTime.Text = [System.String]'MouseHoverTime'
$LabelAdvancedMouseHoverTime.UseCompatibleTextRendering = $true
#
#TextBoxAdvancedMouseHoverHeight
#
$TextBoxAdvancedMouseHoverHeight.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]241))
$TextBoxAdvancedMouseHoverHeight.Name = [System.String]'TextBoxAdvancedMouseHoverHeight'
$TextBoxAdvancedMouseHoverHeight.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedMouseHoverHeight.TabIndex = [System.Int32]11
#
#LabelAdvancedMouseHoverHeight
#
$LabelAdvancedMouseHoverHeight.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]222))
$LabelAdvancedMouseHoverHeight.Name = [System.String]'LabelAdvancedMouseHoverHeight'
$LabelAdvancedMouseHoverHeight.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]16))
$LabelAdvancedMouseHoverHeight.TabIndex = [System.Int32]10
$LabelAdvancedMouseHoverHeight.Text = [System.String]'MouseHoverHeight'
$LabelAdvancedMouseHoverHeight.UseCompatibleTextRendering = $true
#
#TextBoxAdvancedExtendedSounds
#
$TextBoxAdvancedExtendedSounds.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]198))
$TextBoxAdvancedExtendedSounds.Name = [System.String]'TextBoxAdvancedExtendedSounds'
$TextBoxAdvancedExtendedSounds.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedExtendedSounds.TabIndex = [System.Int32]9
#
#LabelAdvancedExtendedSounds
#
$LabelAdvancedExtendedSounds.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]180))
$LabelAdvancedExtendedSounds.Name = [System.String]'LabelAdvancedExtendedSounds'
$LabelAdvancedExtendedSounds.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]15))
$LabelAdvancedExtendedSounds.TabIndex = [System.Int32]8
$LabelAdvancedExtendedSounds.Text = [System.String]'ExtendedSounds'
$LabelAdvancedExtendedSounds.UseCompatibleTextRendering = $true
#
#TextBoxAdvancedDoubleClickWidth
#
$TextBoxAdvancedDoubleClickWidth.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]156))
$TextBoxAdvancedDoubleClickWidth.Name = [System.String]'TextBoxAdvancedDoubleClickWidth'
$TextBoxAdvancedDoubleClickWidth.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedDoubleClickWidth.TabIndex = [System.Int32]7
#
#LabelAdvancedDoubleClickWidth
#
$LabelAdvancedDoubleClickWidth.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]134))
$LabelAdvancedDoubleClickWidth.Name = [System.String]'LabelAdvancedDoubleClickWidth'
$LabelAdvancedDoubleClickWidth.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]19))
$LabelAdvancedDoubleClickWidth.TabIndex = [System.Int32]6
$LabelAdvancedDoubleClickWidth.Text = [System.String]'DoubleClickWidth'
$LabelAdvancedDoubleClickWidth.UseCompatibleTextRendering = $true
#
#LabelAdvancedMouseThreshold2
#
$LabelAdvancedMouseThreshold2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]476))
$LabelAdvancedMouseThreshold2.Name = [System.String]'LabelAdvancedMouseThreshold2'
$LabelAdvancedMouseThreshold2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]15))
$LabelAdvancedMouseThreshold2.TabIndex = [System.Int32]24
$LabelAdvancedMouseThreshold2.Text = [System.String]'MouseThreshold2'
$LabelAdvancedMouseThreshold2.UseCompatibleTextRendering = $true
#
#TextBoxAdvancedMouseThreshold2
#
$TextBoxAdvancedMouseThreshold2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]494))
$TextBoxAdvancedMouseThreshold2.Name = [System.String]'TextBoxAdvancedMouseThreshold2'
$TextBoxAdvancedMouseThreshold2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]21))
$TextBoxAdvancedMouseThreshold2.TabIndex = [System.Int32]25
#
#LabelAdvancedMouseTrails
#
$LabelAdvancedMouseTrails.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]518))
$LabelAdvancedMouseTrails.Name = [System.String]'LabelAdvancedMouseTrails'
$LabelAdvancedMouseTrails.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]16))
$LabelAdvancedMouseTrails.TabIndex = [System.Int32]26
$LabelAdvancedMouseTrails.Text = [System.String]'MouseTrails'
$LabelAdvancedMouseTrails.UseCompatibleTextRendering = $true
#
#TextBoxAdvancedMouseTrails
#
$TextBoxAdvancedMouseTrails.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]537))
$TextBoxAdvancedMouseTrails.Name = [System.String]'TextBoxAdvancedMouseTrails'
$TextBoxAdvancedMouseTrails.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedMouseTrails.TabIndex = [System.Int32]27
#
#LabelAdvancedSmoothMouseXCurve
#
$LabelAdvancedSmoothMouseXCurve.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]561))
$LabelAdvancedSmoothMouseXCurve.Name = [System.String]'LabelAdvancedSmoothMouseXCurve'
$LabelAdvancedSmoothMouseXCurve.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]16))
$LabelAdvancedSmoothMouseXCurve.TabIndex = [System.Int32]28
$LabelAdvancedSmoothMouseXCurve.Text = [System.String]'SmoothMouseXCurve'
$LabelAdvancedSmoothMouseXCurve.UseCompatibleTextRendering = $true
#
#TextBoxAdvancedSmoothMouseXCurve
#
$TextBoxAdvancedSmoothMouseXCurve.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]580))
$TextBoxAdvancedSmoothMouseXCurve.Name = [System.String]'TextBoxAdvancedSmoothMouseXCurve'
$TextBoxAdvancedSmoothMouseXCurve.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedSmoothMouseXCurve.TabIndex = [System.Int32]29
#
#LabelAdvancedSmoothMouseYCurve
#
$LabelAdvancedSmoothMouseYCurve.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]604))
$LabelAdvancedSmoothMouseYCurve.Name = [System.String]'LabelAdvancedSmoothMouseYCurve'
$LabelAdvancedSmoothMouseYCurve.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]15))
$LabelAdvancedSmoothMouseYCurve.TabIndex = [System.Int32]30
$LabelAdvancedSmoothMouseYCurve.Text = [System.String]'SmoothMouseYCurve'
$LabelAdvancedSmoothMouseYCurve.UseCompatibleTextRendering = $true
#
#TextBoxAdvancedMouseYCurve
#
$TextBoxAdvancedMouseYCurve.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]622))
$TextBoxAdvancedMouseYCurve.Name = [System.String]'TextBoxAdvancedMouseYCurve'
$TextBoxAdvancedMouseYCurve.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedMouseYCurve.TabIndex = [System.Int32]31
#
#LabelAdvancedSnapToDefaultButton
#
$LabelAdvancedSnapToDefaultButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]646))
$LabelAdvancedSnapToDefaultButton.Name = [System.String]'LabelAdvancedSnapToDefaultButton'
$LabelAdvancedSnapToDefaultButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]17))
$LabelAdvancedSnapToDefaultButton.TabIndex = [System.Int32]32
$LabelAdvancedSnapToDefaultButton.Text = [System.String]'SnapToDefaultButton'
$LabelAdvancedSnapToDefaultButton.UseCompatibleTextRendering = $true
#
#TextBoxAdvancedSnapToDefaultButton
#
$TextBoxAdvancedSnapToDefaultButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]666))
$TextBoxAdvancedSnapToDefaultButton.Name = [System.String]'TextBoxAdvancedSnapToDefaultButton'
$TextBoxAdvancedSnapToDefaultButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedSnapToDefaultButton.TabIndex = [System.Int32]33
#
#LabelAdvancedSwapMouseButtons
#
$LabelAdvancedSwapMouseButtons.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]690))
$LabelAdvancedSwapMouseButtons.Name = [System.String]'LabelAdvancedSwapMouseButtons'
$LabelAdvancedSwapMouseButtons.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]14))
$LabelAdvancedSwapMouseButtons.TabIndex = [System.Int32]34
$LabelAdvancedSwapMouseButtons.Text = [System.String]'SwapMouseButtons'
$LabelAdvancedSwapMouseButtons.UseCompatibleTextRendering = $true
#
#TextBoxAdvancedSwapMouseButtons
#
$TextBoxAdvancedSwapMouseButtons.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]707))
$TextBoxAdvancedSwapMouseButtons.Name = [System.String]'TextBoxAdvancedSwapMouseButtons'
$TextBoxAdvancedSwapMouseButtons.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedSwapMouseButtons.TabIndex = [System.Int32]35
#
#FormAdvanced
#
$FormAdvanced.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]235,[System.Int32]481))
$FormAdvanced.Controls.Add($PanelAdvancedForm)
$FormAdvanced.HelpButton = $true
$FormAdvanced.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$FormAdvanced.Text = [System.String]'Advanced Settings - TGF Mouse Tuning Pack 2.0'
$FormAdvanced.add_Load($FormAdvanced_Load)
$PanelAdvancedForm.ResumeLayout($false)
$PanelAdvancedForm.PerformLayout()
$FormAdvanced.ResumeLayout($false)
Add-Member -InputObject $FormAdvanced -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedBeep -Value $LabelAdvancedBeep -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name ComboBoxAdvancedBeep -Value $ComboBoxAdvancedBeep -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedDoubleClickHeigh -Value $LabelAdvancedDoubleClickHeigh -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedDoubleClickHeight -Value $TextBoxAdvancedDoubleClickHeight -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedDoubleClickSpeed -Value $LabelAdvancedDoubleClickSpeed -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedDoubleClickSpeed -Value $TextBoxAdvancedDoubleClickSpeed -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name PanelAdvancedForm -Value $PanelAdvancedForm -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedSwapMouseButtons -Value $TextBoxAdvancedSwapMouseButtons -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedSwapMouseButtons -Value $LabelAdvancedSwapMouseButtons -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedSnapToDefaultButton -Value $TextBoxAdvancedSnapToDefaultButton -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedSnapToDefaultButton -Value $LabelAdvancedSnapToDefaultButton -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedMouseYCurve -Value $TextBoxAdvancedMouseYCurve -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedSmoothMouseYCurve -Value $LabelAdvancedSmoothMouseYCurve -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedSmoothMouseXCurve -Value $TextBoxAdvancedSmoothMouseXCurve -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedSmoothMouseXCurve -Value $LabelAdvancedSmoothMouseXCurve -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedMouseTrails -Value $TextBoxAdvancedMouseTrails -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedMouseTrails -Value $LabelAdvancedMouseTrails -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedMouseThreshold2 -Value $TextBoxAdvancedMouseThreshold2 -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedMouseThreshold2 -Value $LabelAdvancedMouseThreshold2 -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedMouseThreshold1 -Value $TextBoxAdvancedMouseThreshold1 -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedMouseThreshold1 -Value $LabelAdvancedMouseThreshold1 -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name ButtonAdvancedApply -Value $ButtonAdvancedApply -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedMouseSpeed -Value $TextBoxAdvancedMouseSpeed -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedMouseSpeed -Value $LabelAdvancedMouseSpeed -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedMouseSensitivity -Value $TextBoxAdvancedMouseSensitivity -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedMouseSensitivity -Value $LabelAdvancedMouseSensitivity -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedMouseHoverWidth -Value $TextBoxAdvancedMouseHoverWidth -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedMouseHoverWidth -Value $LabelAdvancedMouseHoverWidth -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedMouseHoverTime -Value $TextBoxAdvancedMouseHoverTime -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedMouseHoverTime -Value $LabelAdvancedMouseHoverTime -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedMouseHoverHeight -Value $TextBoxAdvancedMouseHoverHeight -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedMouseHoverHeight -Value $LabelAdvancedMouseHoverHeight -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedExtendedSounds -Value $TextBoxAdvancedExtendedSounds -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedExtendedSounds -Value $LabelAdvancedExtendedSounds -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedDoubleClickWidth -Value $TextBoxAdvancedDoubleClickWidth -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedDoubleClickWidth -Value $LabelAdvancedDoubleClickWidth -MemberType NoteProperty
}
. InitializeComponent
