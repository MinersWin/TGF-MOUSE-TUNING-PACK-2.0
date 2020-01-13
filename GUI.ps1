Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'GUI.designer.ps1')
$Form1.ShowDialog()