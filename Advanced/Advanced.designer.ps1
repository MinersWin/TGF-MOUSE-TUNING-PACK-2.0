$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$LabelAdvancedBeep = $null
[System.Windows.Forms.ComboBox]$ComboBox1 = $null
[System.Windows.Forms.Label]$LabelAdvancedDoubleClickHeigh = $null
function InitializeComponent
{
$LabelAdvancedBeep = (New-Object -TypeName System.Windows.Forms.Label)
$ComboBox1 = (New-Object -TypeName System.Windows.Forms.ComboBox)
$LabelAdvancedDoubleClickHeigh = (New-Object -TypeName System.Windows.Forms.Label)
$Form1.SuspendLayout()
#
#LabelAdvancedBeep
#
$LabelAdvancedBeep.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]9))
$LabelAdvancedBeep.Name = [System.String]'LabelAdvancedBeep'
$LabelAdvancedBeep.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]121,[System.Int32]16))
$LabelAdvancedBeep.TabIndex = [System.Int32]0
$LabelAdvancedBeep.Text = [System.String]'Beep'
$LabelAdvancedBeep.UseCompatibleTextRendering = $true
#
#ComboBox1
#
$ComboBox1.FormattingEnabled = $true
$ComboBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]28))
$ComboBox1.Name = [System.String]'ComboBox1'
$ComboBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]124,[System.Int32]21))
$ComboBox1.TabIndex = [System.Int32]1
#
#LabelAdvancedDoubleClickHeigh
#
$LabelAdvancedDoubleClickHeigh.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]52))
$LabelAdvancedDoubleClickHeigh.Name = [System.String]'LabelAdvancedDoubleClickHeigh'
$LabelAdvancedDoubleClickHeigh.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]18))
$LabelAdvancedDoubleClickHeigh.TabIndex = [System.Int32]2
$LabelAdvancedDoubleClickHeigh.Text = [System.String]'DoubleClickHeigh'
$LabelAdvancedDoubleClickHeigh.UseCompatibleTextRendering = $true
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]503,[System.Int32]481))
$Form1.Controls.Add($LabelAdvancedDoubleClickHeigh)
$Form1.Controls.Add($ComboBox1)
$Form1.Controls.Add($LabelAdvancedBeep)
$Form1.Text = [System.String]'Form1'
$Form1.ResumeLayout($false)
Add-Member -InputObject $Form1 -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name LabelAdvancedBeep -Value $LabelAdvancedBeep -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ComboBox1 -Value $ComboBox1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name LabelAdvancedDoubleClickHeigh -Value $LabelAdvancedDoubleClickHeigh -MemberType NoteProperty
}
. InitializeComponent
