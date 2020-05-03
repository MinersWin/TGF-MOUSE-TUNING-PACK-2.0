Add-Type @'
  using System; 
  using System.Runtime.InteropServices;
  using System.Drawing;
  public class DPI {  
    [DllImport("gdi32.dll")]
    static extern int GetDeviceCaps(IntPtr hdc, int nIndex);
    public enum DeviceCap {
      VERTRES = 10,
      DESKTOPVERTRES = 117
    } 
    public static float scaling() {
      Graphics g = Graphics.FromHwnd(IntPtr.Zero);
      IntPtr desktop = g.GetHdc();
      int LogicalScreenHeight = GetDeviceCaps(desktop, (int)DeviceCap.VERTRES);
      int PhysicalScreenHeight = GetDeviceCaps(desktop, (int)DeviceCap.DESKTOPVERTRES);
      return (float)PhysicalScreenHeight / (float)LogicalScreenHeight;
    }
  }
'@ -ReferencedAssemblies 'System.Drawing.dll'


$Scale = [Math]::round([DPI]::scaling(), 2) * 100
Write-Output "Scale: $($Scale)"
switch($Scale){
  100 {$RadioButton100.Checked = $true}
  125 {$RadioButton125.Checked = $true}
  150 {$RadioButton150.Checked = $true}
  175 {$RadioButton175.Checked = $true}
  200 {$RadioButton200.Checked = $true}
  225 {$RadioButton225.Checked = $true}
  250 {$RadioButton250.Checked = $true}
  300 {$RadioButton300.Checked = $true}
  350 {$RadioButton350.Checked = $true}
  default {$RadioButton100.Checked = $true}
}