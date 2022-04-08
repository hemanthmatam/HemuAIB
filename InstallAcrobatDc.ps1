New-Item -Path c:\ -ItemType Directory -Name "AcrobatDC"
$link="https://avdappsrepository.blob.core.windows.net/appbinaries/Acrobat DC for AVD_en_US_WIN_64.zip"
Invoke-WebRequest -Uri "$link" -UseBasicParsing -OutFile "C:\AcrobatDC\acrobatdc.zip"
Expand-Archive -LiteralPath "C:\AcrobatDC\acrobatdc.zip" -DestinationPath "C:\AcrobatDC" -Force -Verbose
cd 'C:\AcrobatDC\Acrobat DC for AVD\Build'
.\setup.exe --silent
sleep 300
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-AcrobatDC
