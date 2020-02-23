$FormMousePack = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.RadioButton]$RadioButton100 = $null
[System.Windows.Forms.Label]$LabelMain = $null
[System.Windows.Forms.Label]$LabelCreator = $null
[System.Windows.Forms.Panel]$PanelScale = $null
[System.Windows.Forms.RadioButton]$RadioButton175 = $null
[System.Windows.Forms.RadioButton]$RadioButton150 = $null
[System.Windows.Forms.RadioButton]$RadioButton125 = $null
[System.Windows.Forms.Label]$LabelScale = $null
function InitializeComponent
{
$RadioButton100 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$LabelMain = (New-Object -TypeName System.Windows.Forms.Label)
$LabelCreator = (New-Object -TypeName System.Windows.Forms.Label)
$PanelScale = (New-Object -TypeName System.Windows.Forms.Panel)
$LabelScale = (New-Object -TypeName System.Windows.Forms.Label)
$RadioButton125 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton150 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton175 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$PanelScale.SuspendLayout()
$FormMousePack.SuspendLayout()
#
#RadioButton100
#
$RadioButton100.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$RadioButton100.Name = [System.String]'RadioButton100'
$RadioButton100.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]24))
$RadioButton100.TabIndex = [System.Int32]0
$RadioButton100.TabStop = $true
$RadioButton100.Text = [System.String]'100%'
$RadioButton100.UseCompatibleTextRendering = $true
$RadioButton100.UseVisualStyleBackColor = $true
#
#LabelMain
#
$LabelMain.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]16.2,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$LabelMain.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]9))
$LabelMain.Name = [System.String]'LabelMain'
$LabelMain.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]531,[System.Int32]33))
$LabelMain.TabIndex = [System.Int32]1
$LabelMain.Text = [System.String]'TGF Mouse Tuning Pack 2.0'
$LabelMain.UseCompatibleTextRendering = $true
#
#LabelCreator
#
$LabelCreator.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]42))
$LabelCreator.Name = [System.String]'LabelCreator'
$LabelCreator.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]202,[System.Int32]23))
$LabelCreator.TabIndex = [System.Int32]2
$LabelCreator.Text = [System.String]'by MinersWin'
$LabelCreator.UseCompatibleTextRendering = $true
#
#PanelScale
#
$PanelScale.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$PanelScale.Controls.Add($RadioButton175)
$PanelScale.Controls.Add($RadioButton150)
$PanelScale.Controls.Add($RadioButton125)
$PanelScale.Controls.Add($LabelScale)
$PanelScale.Controls.Add($RadioButton100)
$PanelScale.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]14,[System.Int32]68))
$PanelScale.Name = [System.String]'PanelScale'
$PanelScale.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]323))
$PanelScale.TabIndex = [System.Int32]3
#
#LabelScale
#
$LabelScale.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]-1,[System.Int32]0))
$LabelScale.Name = [System.String]'LabelScale'
$LabelScale.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]196,[System.Int32]23))
$LabelScale.TabIndex = [System.Int32]1
$LabelScale.Text = [System.String]'Monitor Scale'
$LabelScale.UseCompatibleTextRendering = $true
$LabelScale.add_Click($Label2_Click)
#
#RadioButton125
#
$RadioButton125.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]56))
$RadioButton125.Name = [System.String]'RadioButton125'
$RadioButton125.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]24))
$RadioButton125.TabIndex = [System.Int32]2
$RadioButton125.TabStop = $true
$RadioButton125.Text = [System.String]'125%'
$RadioButton125.UseCompatibleTextRendering = $true
$RadioButton125.UseVisualStyleBackColor = $true
#
#RadioButton150
#
$RadioButton150.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]86))
$RadioButton150.Name = [System.String]'RadioButton150'
$RadioButton150.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]24))
$RadioButton150.TabIndex = [System.Int32]3
$RadioButton150.TabStop = $true
$RadioButton150.Text = [System.String]'150%'
$RadioButton150.UseCompatibleTextRendering = $true
$RadioButton150.UseVisualStyleBackColor = $true
#
#RadioButton175
#
$RadioButton175.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]116))
$RadioButton175.Name = [System.String]'RadioButton175'
$RadioButton175.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]24))
$RadioButton175.TabIndex = [System.Int32]4
$RadioButton175.TabStop = $true
$RadioButton175.Text = [System.String]'175%'
$RadioButton175.UseCompatibleTextRendering = $true
$RadioButton175.UseVisualStyleBackColor = $true
#
#FormMousePack
#
$FormMousePack.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]916,[System.Int32]526))
$FormMousePack.Controls.Add($PanelScale)
$FormMousePack.Controls.Add($LabelCreator)
$FormMousePack.Controls.Add($LabelMain)
$FormMousePack.Name = [System.String]'FormMousePack'
$FormMousePack.Text = [System.String]'TGF Mouse Tuning Pack 2.0'
$PanelScale.ResumeLayout($false)
$FormMousePack.ResumeLayout($false)
Add-Member -InputObject $FormMousePack -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name RadioButton100 -Value $RadioButton100 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name LabelMain -Value $LabelMain -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name LabelCreator -Value $LabelCreator -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name PanelScale -Value $PanelScale -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name RadioButton175 -Value $RadioButton175 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name RadioButton150 -Value $RadioButton150 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name RadioButton125 -Value $RadioButton125 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name LabelScale -Value $LabelScale -MemberType NoteProperty
}
. InitializeComponent
