$uri1="https://avdappsrepository.blob.core.windows.net/appbinaries/PBIDesktopSetup_x64.exe"
Invoke-WebRequest -Uri "$uri1" -UseBasicParsing -OutFile "c:\buildArtifacts\PBIDesktopSetup_x64.exe"

cd "c:\buildArtifacts"
.\PBIDesktopSetup_x64.exe -s ACCEPT_EULA=1
Start-Sleep -Seconds 90
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-PBIDesktopapp
