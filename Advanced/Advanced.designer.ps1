$FormAdvanced = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$LabelAdvancedBeep = $null
[System.Windows.Forms.ComboBox]$ComboBoxAdvancedBeep = $null
[System.Windows.Forms.Label]$LabelAdvancedDoubleClickHeigh = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedDoubleClickHeight = $null
[System.Windows.Forms.Label]$LabelAdvancedDoubleClickSpeed = $null
[System.Windows.Forms.TextBox]$TextBoxAdvancedDoubleClickSpeed = $null
[System.Windows.Forms.Panel]$Panel1 = $null
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
#FormAdvanced
#
$FormAdvanced.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]235,[System.Int32]481))
$FormAdvanced.Controls.Add($Panel1)
$FormAdvanced.HelpButton = $true
$FormAdvanced.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$FormAdvanced.Name = [System.String]'FormAdvanced'
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
}
. InitializeComponent
