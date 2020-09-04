$FormMousePack = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.RadioButton]$RadioButton100 = $null
[System.Windows.Forms.Label]$LabelMain = $null
[System.Windows.Forms.Label]$LabelCreator = $null
[System.Windows.Forms.Panel]$PanelScale = $null
[System.Windows.Forms.Button]$ButtonHelp = $null
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
[System.Windows.Forms.PictureBox]$PictureBox1 = $null
[System.Windows.Forms.Button]$ButtonExit = $null
[System.Windows.Forms.CheckBox]$CheckBoxRestorePoint = $null
[System.Windows.Forms.CheckBox]$CheckBoxRegBackup = $null
[System.Windows.Forms.Button]$ButtonLetsGo = $null
[System.Windows.Forms.Button]$ButtonGerman = $null
[System.Windows.Forms.Button]$ButtonEnglish = $null
[System.Windows.Forms.TrackBar]$TrackBarMouseSensitivity = $null
[System.Windows.Forms.CheckBox]$CheckBoxMouseAccelerationFix = $null
[System.Windows.Forms.Panel]$PanelMouseSpeed = $null
[System.Windows.Forms.Label]$Label2 = $null
[System.Windows.Forms.Label]$Label1 = $null
[System.Windows.Forms.Label]$LabelMouseSpeed = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'GUI.resources.ps1')
$RadioButton100 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$LabelMain = (New-Object -TypeName System.Windows.Forms.Label)
$LabelCreator = (New-Object -TypeName System.Windows.Forms.Label)
$PanelScale = (New-Object -TypeName System.Windows.Forms.Panel)
$ButtonHelp = (New-Object -TypeName System.Windows.Forms.Button)
$ButtonDetect = (New-Object -TypeName System.Windows.Forms.Button)
$RadioButton350 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton300 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton250 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton225 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton200 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton175 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton150 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton125 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$LabelScale = (New-Object -TypeName System.Windows.Forms.Label)
$PictureBox1 = (New-Object -TypeName System.Windows.Forms.PictureBox)
$ButtonExit = (New-Object -TypeName System.Windows.Forms.Button)
$CheckBoxRestorePoint = (New-Object -TypeName System.Windows.Forms.CheckBox)
$CheckBoxRegBackup = (New-Object -TypeName System.Windows.Forms.CheckBox)
$ButtonLetsGo = (New-Object -TypeName System.Windows.Forms.Button)
$ButtonGerman = (New-Object -TypeName System.Windows.Forms.Button)
$ButtonEnglish = (New-Object -TypeName System.Windows.Forms.Button)
$TrackBarMouseSensitivity = (New-Object -TypeName System.Windows.Forms.TrackBar)
$CheckBoxMouseAccelerationFix = (New-Object -TypeName System.Windows.Forms.CheckBox)
$PanelMouseSpeed = (New-Object -TypeName System.Windows.Forms.Panel)
$Label2 = (New-Object -TypeName System.Windows.Forms.Label)
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
$LabelMouseSpeed = (New-Object -TypeName System.Windows.Forms.Label)
$PanelScale.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$PictureBox1).BeginInit()
([System.ComponentModel.ISupportInitialize]$TrackBarMouseSensitivity).BeginInit()
$PanelMouseSpeed.SuspendLayout()
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
$PanelScale.Controls.Add($ButtonHelp)
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
#ButtonHelp
#
$ButtonHelp.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]104,[System.Int32]4))
$ButtonHelp.Name = [System.String]'ButtonHelp'
$ButtonHelp.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]25,[System.Int32]25))
$ButtonHelp.TabIndex = [System.Int32]11
$ButtonHelp.Text = [System.String]'?'
$ButtonHelp.UseCompatibleTextRendering = $true
$ButtonHelp.UseVisualStyleBackColor = $true
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
#PictureBox1
#
$PictureBox1.BackgroundImage = ([System.Drawing.Image]$resources.'PictureBox1.BackgroundImage')
$PictureBox1.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Stretch
$PictureBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]396,[System.Int32]9))
$PictureBox1.Name = [System.String]'PictureBox1'
$PictureBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]278,[System.Int32]72))
$PictureBox1.TabIndex = [System.Int32]5
$PictureBox1.TabStop = $false
$PictureBox1.add_Click($PictureBox1_Click)
#
#ButtonExit
#
$ButtonExit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]537,[System.Int32]491))
$ButtonExit.Name = [System.String]'ButtonExit'
$ButtonExit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]137,[System.Int32]23))
$ButtonExit.TabIndex = [System.Int32]6
$ButtonExit.Text = [System.String]'Exit'
$ButtonExit.UseCompatibleTextRendering = $true
$ButtonExit.UseVisualStyleBackColor = $true
#
#CheckBoxRestorePoint
#
$CheckBoxRestorePoint.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$CheckBoxRestorePoint.CheckAlign = [System.Drawing.ContentAlignment]::MiddleRight
$CheckBoxRestorePoint.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]522,[System.Int32]425))
$CheckBoxRestorePoint.Name = [System.String]'CheckBoxRestorePoint'
$CheckBoxRestorePoint.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]152,[System.Int32]24))
$CheckBoxRestorePoint.TabIndex = [System.Int32]7
$CheckBoxRestorePoint.Text = [System.String]'Wiederherstellungspunkt'
$CheckBoxRestorePoint.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$CheckBoxRestorePoint.UseCompatibleTextRendering = $true
$CheckBoxRestorePoint.UseVisualStyleBackColor = $true
#
#CheckBoxRegBackup
#
$CheckBoxRegBackup.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$CheckBoxRegBackup.CheckAlign = [System.Drawing.ContentAlignment]::MiddleRight
$CheckBoxRegBackup.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]522,[System.Int32]455))
$CheckBoxRegBackup.Name = [System.String]'CheckBoxRegBackup'
$CheckBoxRegBackup.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]152,[System.Int32]24))
$CheckBoxRegBackup.TabIndex = [System.Int32]8
$CheckBoxRegBackup.Text = [System.String]'Registry Backup'
$CheckBoxRegBackup.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$CheckBoxRegBackup.UseCompatibleTextRendering = $true
$CheckBoxRegBackup.UseVisualStyleBackColor = $true
#
#ButtonLetsGo
#
$ButtonLetsGo.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ButtonLetsGo.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]0)),([System.Int32]([System.Byte][System.Byte]192)),([System.Int32]([System.Byte][System.Byte]0)))

$ButtonLetsGo.ImageAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$ButtonLetsGo.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]438,[System.Int32]491))
$ButtonLetsGo.Name = [System.String]'ButtonLetsGo'
$ButtonLetsGo.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]83,[System.Int32]23))
$ButtonLetsGo.TabIndex = [System.Int32]9
$ButtonLetsGo.Text = [System.String]'Lets Go'
$ButtonLetsGo.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$ButtonLetsGo.UseCompatibleTextRendering = $true
$ButtonLetsGo.UseVisualStyleBackColor = $true
#
#ButtonGerman
#
$ButtonGerman.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]491))
$ButtonGerman.Name = [System.String]'ButtonGerman'
$ButtonGerman.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ButtonGerman.TabIndex = [System.Int32]10
$ButtonGerman.Text = [System.String]'Deutsch'
$ButtonGerman.UseCompatibleTextRendering = $true
$ButtonGerman.UseVisualStyleBackColor = $true
#
#ButtonEnglish
#
$ButtonEnglish.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]93,[System.Int32]491))
$ButtonEnglish.Name = [System.String]'ButtonEnglish'
$ButtonEnglish.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ButtonEnglish.TabIndex = [System.Int32]11
$ButtonEnglish.Text = [System.String]'English'
$ButtonEnglish.UseCompatibleTextRendering = $true
$ButtonEnglish.UseVisualStyleBackColor = $true
#
#TrackBarMouseSensitivity
#
$TrackBarMouseSensitivity.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]44))
$TrackBarMouseSensitivity.Maximum = [System.Int32]20
$TrackBarMouseSensitivity.Name = [System.String]'TrackBarMouseSensitivity'
$TrackBarMouseSensitivity.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]513,[System.Int32]56))
$TrackBarMouseSensitivity.TabIndex = [System.Int32]12
#
#CheckBoxMouseAccelerationFix
#
$CheckBoxMouseAccelerationFix.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$CheckBoxMouseAccelerationFix.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]68))
$CheckBoxMouseAccelerationFix.Name = [System.String]'CheckBoxMouseAccelerationFix'
$CheckBoxMouseAccelerationFix.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]218,[System.Int32]24))
$CheckBoxMouseAccelerationFix.TabIndex = [System.Int32]13
$CheckBoxMouseAccelerationFix.Text = [System.String]'Mausbeschleunigungs Fix'
$CheckBoxMouseAccelerationFix.UseCompatibleTextRendering = $true
$CheckBoxMouseAccelerationFix.UseVisualStyleBackColor = $true
#
#PanelMouseSpeed
#
$PanelMouseSpeed.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$PanelMouseSpeed.Controls.Add($Label2)
$PanelMouseSpeed.Controls.Add($Label1)
$PanelMouseSpeed.Controls.Add($LabelMouseSpeed)
$PanelMouseSpeed.Controls.Add($TrackBarMouseSensitivity)
$PanelMouseSpeed.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]98))
$PanelMouseSpeed.Name = [System.String]'PanelMouseSpeed'
$PanelMouseSpeed.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]519,[System.Int32]84))
$PanelMouseSpeed.TabIndex = [System.Int32]14
#
#Label2
#
$Label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]407,[System.Int32]27))
$Label2.Name = [System.String]'Label2'
$Label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Label2.TabIndex = [System.Int32]15
$Label2.Text = [System.String]'(Fast) 20'
$Label2.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$Label2.UseCompatibleTextRendering = $true
#
#Label1
#
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]27))
$Label1.Name = [System.String]'Label1'
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Label1.TabIndex = [System.Int32]14
$Label1.Text = [System.String]'1 (Slow)'
$Label1.UseCompatibleTextRendering = $true
$Label1.add_Click($Label1_Click)
#
#LabelMouseSpeed
#
$LabelMouseSpeed.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$LabelMouseSpeed.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]4))
$LabelMouseSpeed.Name = [System.String]'LabelMouseSpeed'
$LabelMouseSpeed.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$LabelMouseSpeed.TabIndex = [System.Int32]13
$LabelMouseSpeed.Text = [System.String]'Mouse Speed'
$LabelMouseSpeed.UseCompatibleTextRendering = $true
$LabelMouseSpeed.add_Click($Label1_Click)
#
#FormMousePack
#
$FormMousePack.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]682,[System.Int32]526))
$FormMousePack.Controls.Add($PanelMouseSpeed)
$FormMousePack.Controls.Add($CheckBoxMouseAccelerationFix)
$FormMousePack.Controls.Add($ButtonEnglish)
$FormMousePack.Controls.Add($ButtonGerman)
$FormMousePack.Controls.Add($ButtonLetsGo)
$FormMousePack.Controls.Add($CheckBoxRegBackup)
$FormMousePack.Controls.Add($CheckBoxRestorePoint)
$FormMousePack.Controls.Add($ButtonExit)
$FormMousePack.Controls.Add($PictureBox1)
$FormMousePack.Controls.Add($PanelScale)
$FormMousePack.Controls.Add($LabelCreator)
$FormMousePack.Controls.Add($LabelMain)
$FormMousePack.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$FormMousePack.Text = [System.String]'TGF Mouse Tuning Pack 2.0'
$FormMousePack.add_Load($FormMousePack_Load)
$PanelScale.ResumeLayout($false)
([System.ComponentModel.ISupportInitialize]$PictureBox1).EndInit()
([System.ComponentModel.ISupportInitialize]$TrackBarMouseSensitivity).EndInit()
$PanelMouseSpeed.ResumeLayout($false)
$PanelMouseSpeed.PerformLayout()
$FormMousePack.ResumeLayout($false)
Add-Member -InputObject $FormMousePack -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name RadioButton100 -Value $RadioButton100 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name LabelMain -Value $LabelMain -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name LabelCreator -Value $LabelCreator -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name PanelScale -Value $PanelScale -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name ButtonHelp -Value $ButtonHelp -MemberType NoteProperty
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
Add-Member -InputObject $FormMousePack -Name PictureBox1 -Value $PictureBox1 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name ButtonExit -Value $ButtonExit -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name CheckBoxRestorePoint -Value $CheckBoxRestorePoint -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name CheckBoxRegBackup -Value $CheckBoxRegBackup -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name ButtonLetsGo -Value $ButtonLetsGo -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name ButtonGerman -Value $ButtonGerman -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name ButtonEnglish -Value $ButtonEnglish -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name TrackBarMouseSensitivity -Value $TrackBarMouseSensitivity -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name CheckBoxMouseAccelerationFix -Value $CheckBoxMouseAccelerationFix -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name PanelMouseSpeed -Value $PanelMouseSpeed -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name Label2 -Value $Label2 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name Label1 -Value $Label1 -MemberType NoteProperty
Add-Member -InputObject $FormMousePack -Name LabelMouseSpeed -Value $LabelMouseSpeed -MemberType NoteProperty
}
. InitializeComponent
