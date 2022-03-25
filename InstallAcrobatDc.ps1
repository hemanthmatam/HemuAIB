$uri="https://avdappsrepository.blob.core.windows.net/appbinaries/Acrobat DC for AVD_en_US_WIN_64.zip"
Invoke-WebRequest -Uri "$uri" -UseBasicParsing -OutFile "C:\buildArtifacts\acrobatdc.zip"
Expand-Archive -LiteralPath "C:\buildArtifacts\acrobatdc.zip" -DestinationPath "C:\buildArtifacts" -Force -Verbose
cd 'C:\buildArtifacts\Acrobat DC for AVD\Build'
.\setup.exe --silent
sleep 300
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-AcrobatDC
