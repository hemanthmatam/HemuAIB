$uri1="https://avdappsrepository.blob.core.windows.net/appbinaries/Bentley_ProjectWiseExplorer_x64_10.00.3434.zip"
Invoke-WebRequest -Uri "$uri1" -UseBasicParsing -OutFile "c:\buildArtifacts\Bentlyprojectexplorer.zip"
Expand-Archive -LiteralPath C:\buildArtifacts\Bentlyprojectexplorer.zip -DestinationPath C:\buildArtifacts -Force -Verbose
cd C:\buildArtifacts\Bentley_ProjectWiseExplorer_x64_10.00.3434\Package\x64\
.\Bentley_ProjectWiseExplorer_x64_10.00.3434_ALL_R1_Install.vbs
Sleep 300

Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-bently-projectexplprerequsite
