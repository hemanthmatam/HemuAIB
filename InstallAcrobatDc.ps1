$uri15="https://avdappsrepository.blob.core.windows.net/appbinaries/Adobe_Acrobat_DC_21.007.20099.zip"
Invoke-WebRequest -Uri "$uri15" -UseBasicParsing -OutFile "C:\buildArtifacts\acrobatdc.zip"
Expand-Archive -LiteralPath "C:\buildArtifacts\acrobatdc.zip" -DestinationPath "C:\buildArtifacts" -Force -Verbose

Expand-Archive -LiteralPath 'C:\buildArtifacts\Adobe_Acrobat_DC_21.007.20099\Source\Acrobat DC for AVD_en_US_WIN_64.zip' -DestinationPath "C:\buildArtifacts\Adobe_Acrobat_DC_21.007.20099\Source" -Force
cd 'C:\buildArtifacts\Adobe_Acrobat_DC_21.007.20099\Source\Acrobat DC for AVD\Build'
.\setup.exe --silent
sleep 300

Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-AcrobatDC
