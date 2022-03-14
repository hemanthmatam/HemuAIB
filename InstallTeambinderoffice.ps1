$uri1="https://avdappsrepository.blob.core.windows.net/appbinaries/InEight_TeamBinderOfficeIntegration_1.23.00_R1.zip"
Invoke-WebRequest -Uri "$uri1" -UseBasicParsing -OutFile "c:\buildArtifacts\Teambinderoffice.zip"
Expand-Archive -LiteralPath C:\buildArtifacts\Teambinderoffice.zip -DestinationPath C:\buildArtifacts -Force -Verbose
cd C:\buildArtifacts\InEight_TeamBinderOfficeIntegration_1.23.00_R1\Package\x86
.\InEight_TeamBinderOfficeIntegration_1.23.00_ALL_R1_Install.vbs
sleep 180
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-Teams-Binder-Office
