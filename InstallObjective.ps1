$uri1="https://avdappsrepository.blob.core.windows.net/appbinaries/Objective_Objective_x64_10.6.306.zip"
Invoke-WebRequest -Uri "$uri1" -UseBasicParsing -OutFile "c:\buildArtifacts\Objective10-6.zip"
Expand-Archive -LiteralPath C:\buildArtifacts\Objective10-6.zip -DestinationPath C:\buildArtifacts -Force -Verbose
cd C:\buildArtifacts\Objective_Objective_x64_10.6.306\Package\x64
.\Objective_Objective_x64_10.6.306_ALL_R3_Install.vbs
sleep 120
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-Objective-10-6-version
