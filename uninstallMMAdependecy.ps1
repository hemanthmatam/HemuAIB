Get-WmiObject -Class Win32_Product | Select-Object -Property Name
$MyProgram = Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -eq "Microsoft Monitoring Agent"}
$MyProgram.uninstall()
Sleep 120
$MyProgram
cd "C:\Program Files\Microsoft Dependency Agent"
.\Uninstall_9.10.13.19190.exe /S
Sleep 60
