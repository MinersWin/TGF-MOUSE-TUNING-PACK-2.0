$FormAdvanced = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$LabelAdvancedBeep = $null
[System.Windows.Forms.ComboBox]$ComboBoxAdvancedBeep = $null
[System.Windows.Forms.Label]$LabelAdvancedDoubleClickHeigh = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedDoubleClickHeight = $null
[System.Windows.Forms.Label]$LabelAdvancedDoubleClickSpeed = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedDoubleClickSpeed = $null
[System.Windows.Forms.Panel]$Panel1 = $null
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
$Panel1 = (New-Object -TypeName System.Windows.Forms.Panel)
$TextBoxAdvancedMouseHoverHeight = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedMouseHoverHeight = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedExtendedSounds = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedExtendedSounds = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedDoubleClickWidth = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedDoubleClickWidth = (New-Object -TypeName System.Windows.Forms.Label)
$LabelAdvancedMouseHoverTime = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedMouseHoverTime = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedMouseHoverWidth = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedMouseHoverWidth = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelAdvancedMouseSensitivity = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxAdvancedMouseSensitivity = (New-Object -TypeName System.Windows.Forms.TextBox)
$Panel1.SuspendLayout()
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
#Panel1
#
$Panel1.AutoScroll = $true
$Panel1.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel1.Controls.Add($TextBoxAdvancedMouseSensitivity)
$Panel1.Controls.Add($LabelAdvancedMouseSensitivity)
$Panel1.Controls.Add($TextBoxAdvancedMouseHoverWidth)
$Panel1.Controls.Add($LabelAdvancedMouseHoverWidth)
$Panel1.Controls.Add($TextBoxAdvancedMouseHoverTime)
$Panel1.Controls.Add($LabelAdvancedMouseHoverTime)
$Panel1.Controls.Add($TextBoxAdvancedMouseHoverHeight)
$Panel1.Controls.Add($LabelAdvancedMouseHoverHeight)
$Panel1.Controls.Add($TextBoxAdvancedExtendedSounds)
$Panel1.Controls.Add($LabelAdvancedExtendedSounds)
$Panel1.Controls.Add($TextBoxAdvancedDoubleClickWidth)
$Panel1.Controls.Add($LabelAdvancedDoubleClickWidth)
$Panel1.Controls.Add($LabelAdvancedBeep)
$Panel1.Controls.Add($TextBoxAdvancedDoubleClickSpeed)
$Panel1.Controls.Add($ComboBoxAdvancedBeep)
$Panel1.Controls.Add($LabelAdvancedDoubleClickSpeed)
$Panel1.Controls.Add($LabelAdvancedDoubleClickHeigh)
$Panel1.Controls.Add($TextBoxAdvancedDoubleClickHeight)
$Panel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$Panel1.Name = [System.String]'Panel1'
$Panel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]208,[System.Int32]457))
$Panel1.TabIndex = [System.Int32]6
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
#LabelAdvancedMouseHoverTime
#
$LabelAdvancedMouseHoverTime.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]265))
$LabelAdvancedMouseHoverTime.Name = [System.String]'LabelAdvancedMouseHoverTime'
$LabelAdvancedMouseHoverTime.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]16))
$LabelAdvancedMouseHoverTime.TabIndex = [System.Int32]12
$LabelAdvancedMouseHoverTime.Text = [System.String]'MouseHoverTime'
$LabelAdvancedMouseHoverTime.UseCompatibleTextRendering = $true
#
#TextBoxAdvancedMouseHoverTime
#
$TextBoxAdvancedMouseHoverTime.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]284))
$TextBoxAdvancedMouseHoverTime.Name = [System.String]'TextBoxAdvancedMouseHoverTime'
$TextBoxAdvancedMouseHoverTime.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedMouseHoverTime.TabIndex = [System.Int32]13
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
#TextBoxAdvancedMouseHoverWidth
#
$TextBoxAdvancedMouseHoverWidth.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]326))
$TextBoxAdvancedMouseHoverWidth.Name = [System.String]'TextBoxAdvancedMouseHoverWidth'
$TextBoxAdvancedMouseHoverWidth.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedMouseHoverWidth.TabIndex = [System.Int32]15
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
#TextBoxAdvancedMouseSensitivity
#
$TextBoxAdvancedMouseSensitivity.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]367))
$TextBoxAdvancedMouseSensitivity.Name = [System.String]'TextBoxAdvancedMouseSensitivity'
$TextBoxAdvancedMouseSensitivity.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]21))
$TextBoxAdvancedMouseSensitivity.TabIndex = [System.Int32]17
#
#FormAdvanced
#
$FormAdvanced.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]235,[System.Int32]481))
$FormAdvanced.Controls.Add($Panel1)
$FormAdvanced.HelpButton = $true
$FormAdvanced.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$FormAdvanced.Text = [System.String]'Advanced Settings - TGF Mouse Tuning Pack 2.0'
$Panel1.ResumeLayout($false)
$Panel1.PerformLayout()
$FormAdvanced.ResumeLayout($false)
Add-Member -InputObject $FormAdvanced -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedBeep -Value $LabelAdvancedBeep -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name ComboBoxAdvancedBeep -Value $ComboBoxAdvancedBeep -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedDoubleClickHeigh -Value $LabelAdvancedDoubleClickHeigh -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedDoubleClickHeight -Value $TextBoxAdvancedDoubleClickHeight -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name LabelAdvancedDoubleClickSpeed -Value $LabelAdvancedDoubleClickSpeed -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name TextBoxAdvancedDoubleClickSpeed -Value $TextBoxAdvancedDoubleClickSpeed -MemberType NoteProperty
Add-Member -InputObject $FormAdvanced -Name Panel1 -Value $Panel1 -MemberType NoteProperty
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
