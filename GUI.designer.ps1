$FormMousePack = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.RadioButton]$RadioButton100 = $null
[System.Windows.Forms.Label]$LabelMain = $null
[System.Windows.Forms.Label]$LabelCreator = $null
[System.Windows.Forms.Panel]$PanelScale = $null
[System.Windows.Forms.Button]$ButtonDetect = $null
[System.Windows.Forms.RadioButton]$RadioButton350 = $null
[System.Windows.Forms.RadioButton]$RadioButton300 = $null
[System.Windows.Forms.RadioButton]$RadioButton250 = $null
[System.Windows.Forms.RadioButton]$RadioButton225 = $null
[System.Windows.Forms.RadioButton]$RadioButton200 = $null
[System.Windows.Forms.RadioButton]$RadioButton175 = $null
[System.Windows.Forms.RadioButton]$RadioButton150 = $null
[System.Windows.Forms.RadioButton]$RadioButton125 = $null
[System.Windows.Forms.Label]$LabelScale = $null
[System.Windows.Forms.CheckBox]$CheckBoxAcceleration Fix = $null
[System.Windows.Forms.PictureBox]$PictureBox1 = $null
function InitializeComponent
{
$RadioButton100 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$LabelMain = (New-Object -TypeName System.Windows.Forms.Label)
$LabelCreator = (New-Object -TypeName System.Windows.Forms.Label)
$PanelScale = (New-Object -TypeName System.Windows.Forms.Panel)
$RadioButton175 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton150 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton125 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$LabelScale = (New-Object -TypeName System.Windows.Forms.Label)
$RadioButton200 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton225 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton250 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton300 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton350 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$ButtonDetect = (New-Object -TypeName System.Windows.Forms.Button)
$CheckBoxAcceleration Fix = (New-Object -TypeName System.Windows.Forms.CheckBox)
$PictureBox1 = (New-Object -TypeName System.Windows.Forms.PictureBox)
$PanelScale.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$PictureBox1).BeginInit()
$FormMousePack.SuspendLayout()
#
#RadioButton100
#
$RadioButton100.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$RadioButton100.Name = [System.String]'RadioButton100'
$RadioButton100.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]126,[System.Int32]24))
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
$PanelScale.Controls.Add($ButtonDetect)
$PanelScale.Controls.Add($RadioButton350)
$PanelScale.Controls.Add($RadioButton300)
$PanelScale.Controls.Add($RadioButton250)
$PanelScale.Controls.Add($RadioButton225)
$PanelScale.Controls.Add($RadioButton200)
$PanelScale.Controls.Add($RadioButton175)
$PanelScale.Controls.Add($RadioButton150)
$PanelScale.Controls.Add($RadioButton125)
$PanelScale.Controls.Add($LabelScale)
$PanelScale.Controls.Add($RadioButton100)
$PanelScale.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]537,[System.Int32]87))
$PanelScale.Name = [System.String]'PanelScale'
$PanelScale.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]137,[System.Int32]332))
$PanelScale.TabIndex = [System.Int32]3
#
#RadioButton175
#
$RadioButton175.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]116))
$RadioButton175.Name = [System.String]'RadioButton175'
$RadioButton175.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]126,[System.Int32]24))
$RadioButton175.TabIndex = [System.Int32]4
$RadioButton175.TabStop = $true
$RadioButton175.Text = [System.String]'175%'
$RadioButton175.UseCompatibleTextRendering = $true
$RadioButton175.UseVisualStyleBackColor = $true
#
#RadioButton150
#
$RadioButton150.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]86))
$RadioButton150.Name = [System.String]'RadioButton150'
$RadioButton150.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]126,[System.Int32]24))
$RadioButton150.TabIndex = [System.Int32]3
$RadioButton150.TabStop = $true
$RadioButton150.Text = [System.String]'150%'
$RadioButton150.UseCompatibleTextRendering = $true
$RadioButton150.UseVisualStyleBackColor = $true
#
#RadioButton125
#
$RadioButton125.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]56))
$RadioButton125.Name = [System.String]'RadioButton125'
$RadioButton125.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]126,[System.Int32]24))
$RadioButton125.TabIndex = [System.Int32]2
$RadioButton125.TabStop = $true
$RadioButton125.Text = [System.String]'125%'
$RadioButton125.UseCompatibleTextRendering = $true
$RadioButton125.UseVisualStyleBackColor = $true
#
#LabelScale
#
$LabelScale.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]2,[System.Int32]4))
$LabelScale.Name = [System.String]'LabelScale'
$LabelScale.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]130,[System.Int32]23))
$LabelScale.TabIndex = [System.Int32]1
$LabelScale.Text = [System.String]'Monitor Scale'
$LabelScale.UseCompatibleTextRendering = $true
$LabelScale.add_Click($Label2_Click)
#
#RadioButton200
#
$RadioButton200.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]146))
$RadioButton200.Name = [System.String]'RadioButton200'
$RadioButton200.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]126,[System.Int32]24))
$RadioButton200.TabIndex = [System.Int32]5
$RadioButton200.TabStop = $true
$RadioButton200.Text = [System.String]'200%'
$RadioButton200.UseCompatibleTextRendering = $true
$RadioButton200.UseVisualStyleBackColor = $true
#
#RadioButton225
#
$RadioButton225.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]176))
$RadioButton225.Name = [System.String]'RadioButton225'
$RadioButton225.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]126,[System.Int32]24))
$RadioButton225.TabIndex = [System.Int32]6
$RadioButton225.TabStop = $true
$RadioButton225.Text = [System.String]'225%'
$RadioButton225.UseCompatibleTextRendering = $true
$RadioButton225.UseVisualStyleBackColor = $true
#
#RadioButton250
#
$RadioButton250.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]206))
$RadioButton250.Name = [System.String]'RadioButton250'
$RadioButton250.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]126,[System.Int32]24))
$RadioButton250.TabIndex = [System.Int32]7
$RadioButton250.TabStop = $true
$RadioButton250.Text = [System.String]'250%'
$RadioButton250.UseCompatibleTextRendering = $true
$RadioButton250.UseVisualStyleBackColor = $true
#
#RadioButton300
#
$RadioButton300.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]236))
$RadioButton300.Name = [System.String]'RadioButton300'
$RadioButton300.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$RadioButton300.TabIndex = [System.Int32]8
$RadioButton300.TabStop = $true
$RadioButton300.Text = [System.String]'300%'
$RadioButton300.UseCompatibleTextRendering = $true
$RadioButton300.UseVisualStyleBackColor = $true
#
#RadioButton350
#
$RadioButton350.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]266))
$RadioButton350.Name = [System.String]'RadioButton350'
$RadioButton350.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$RadioButton350.TabIndex = [System.Int32]9
$RadioButton350.TabStop = $true
$RadioButton350.Text = [System.String]'350%'
$RadioButton350.UseCompatibleTextRendering = $true
$RadioButton350.UseVisualStyleBackColor = $true
#
#ButtonDetect
#
$ButtonDetect.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]296))
$ButtonDetect.Name = [System.String]'ButtonDetect'
$ButtonDetect.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]126,[System.Int32]23))
$ButtonDetect.TabIndex = [System.Int32]10
$ButtonDetect.Text = [System.String]'Detect'
$ButtonDetect.UseCompatibleTextRendering = $true
$ButtonDetect.UseVisualStyleBackColor = $true
#
#CheckBoxAcceleration Fix
#
$CheckBoxAcceleration Fix.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]82))
$CheckBoxAcceleration Fix.Name = [System.String]'CheckBoxAcceleration Fix'
$CheckBoxAcceleration Fix.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]519,[System.Int32]24))
$CheckBoxAcceleration Fix.TabIndex = [System.Int32]4
$CheckBoxAcceleration Fix.Text = [System.String]'Mouse Acceleration Fix'
$CheckBoxAcceleration Fix.UseCompatibleTextRendering = $true
$CheckBoxAcceleration Fix.UseVisualStyleBackColor = $true
#
#PictureBox1
#
$PictureBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]396,[System.Int32]9))
$PictureBox1.Name = [System.String]'PictureBox1'
$PictureBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]278,[System.Int32]72))
$PictureBox1.TabIndex = [System.Int32]5
$PictureBox1.TabStop = $false
#
#FormMousePack
#
$FormMousePack.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]682,[System.Int32]526))
$FormMousePack.Controls.Add($PictureBox1)
$FormMousePack.Controls.Add($CheckBoxAcceleration Fix)
$FormMousePack.Controls.Add($PanelScale)
$FormMousePack.Controls.Add($LabelCreator)
$FormMousePack.Controls.Add($LabelMain)
$FormMousePack.Text = [System.String]'TGF Mouse Tuning Pack 2.0'
$FormMousePack.add_Load($FormMousePack_Load)
$PanelScale.ResumeLayout($false)
([System.ComponentModel.ISupportInitialize]$PictureBox1).EndInit()
$FormMousePack.ResumeLayout($false)
Add-Member -InputObject $FormMousePack -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name RadioButton100 -Value $RadioButton100 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name LabelMain -Value $LabelMain -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name LabelCreator -Value $LabelCreator -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name PanelScale -Value $PanelScale -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name ButtonDetect -Value $ButtonDetect -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name RadioButton350 -Value $RadioButton350 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name RadioButton300 -Value $RadioButton300 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name RadioButton250 -Value $RadioButton250 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name RadioButton225 -Value $RadioButton225 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name RadioButton200 -Value $RadioButton200 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name RadioButton175 -Value $RadioButton175 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name RadioButton150 -Value $RadioButton150 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name RadioButton125 -Value $RadioButton125 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name LabelScale -Value $LabelScale -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name CheckBoxAcceleration Fix -Value $CheckBoxAcceleration Fix -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name PictureBox1 -Value $PictureBox1 -MemberType NoteProperty
}
. InitializeComponent