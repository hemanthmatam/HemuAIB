$reg_path = "HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate\AU"
if (-Not (Test-Path $reg_path)) { New-Item $reg_path -Force }
Set-ItemProperty $reg_path -Name NoAutoUpdate -Value 1
Set-ItemProperty $reg_path -Name AUOptions -Value 3
sleep 5
$uri="https://avdappsrepository.blob.core.windows.net/appbinaries/AURegion.zip"
Invoke-WebRequest -Uri "$uri" -UseBasicParsing -OutFile "C:\buildArtifacts\auregion.zip"
Expand-Archive -LiteralPath "C:\buildArtifacts\auregion.zip" -DestinationPath "C:\buildArtifacts" -Force -Verbose
cd C:\buildArtifacts
.\Apply-RegionSettings.ps1
Sleep 10
