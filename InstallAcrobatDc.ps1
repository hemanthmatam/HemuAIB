https://avdappsrepository.blob.core.windows.net/appbinaries/Adobe_Acrobat_DC_21.007.20099.zip

$uri15="https://avdappsrepository.blob.core.windows.net/appbinaries/Adobe_Acrobat_DC_21.007.20099.zip"
Invoke-WebRequest -Uri "$uri15" -UseBasicParsing -OutFile "C:\buildArtifacts\acrobatdc.zip"
Expand-Archive -LiteralPath "C:\buildArtifacts\acrobatdc.zip" -DestinationPath "C:\buildArtifacts" -Force -Verbose
cd 'C:\buildArtifacts\Adobe_Acrobat_DC_21.007.20099\Source\Acrobat DC for AVD_en_US_WIN_64\Acrobat DC for AVD\Build'
.\setup.exe --silent
sleep 180
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-AcrobatDC
