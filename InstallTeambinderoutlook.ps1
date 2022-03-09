$uri1="https://avdappsrepository.blob.core.windows.net/appbinaries/InEight_TeamBinderOutlookIntegration_x64_1.15.7424.zip"
Invoke-WebRequest -Uri "$uri1" -UseBasicParsing -OutFile "c:\buildArtifacts\Teambinderoutlook.zip"
Expand-Archive -LiteralPath C:\buildArtifacts\Teambinderoutlook.zip -DestinationPath C:\buildArtifacts -Force -Verbose
cd C:\buildArtifacts\InEight_TeamBinderOutlookIntegration_x64_1.15.7424\Package\x64
.\QASoftware_TeamBinderOutlookIntegration_x64_1.15.7424_ALL_R1.cmd install
sleep 180
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-Teams-Binder-Outlook
