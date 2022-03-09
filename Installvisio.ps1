$uri2="https://avdappsrepository.blob.core.windows.net/appbinaries/Visio OfficeSetup.exe"
Invoke-WebRequest -Uri "$uri2" -UseBasicParsing -OutFile "c:\buildArtifacts\VisioSetup.exe"
cd "C:\buildArtifacts"
.\VisioSetup.exe
Start-Sleep -Seconds 360
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-Visio
