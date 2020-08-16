Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'Advanced.designer.ps1')
$FormAdvanced.ShowDialog()