$uri="https://avdappsrepository.blob.core.windows.net/appbinaries/Bentley_ProjectWiseWebServerClientComponents_x64_8.11.11.zip"
$uri1="https://avdappsrepository.blob.core.windows.net/appbinaries/Bentley_ProjectWiseExplorer_x64_10.00.3434.zip"
Invoke-WebRequest -Uri "$uri" -UseBasicParsing -OutFile "c:\buildArtifacts\BentlyprojectWebserver.zip"
Invoke-WebRequest -Uri "$uri1" -UseBasicParsing -OutFile "c:\buildArtifacts\Bentlyprojectexplorer.zip"
Expand-Archive -LiteralPath C:\buildArtifacts\BentlyprojectWebserver.zip -DestinationPath C:\buildArtifacts -Force -Verbose
Expand-Archive -LiteralPath C:\buildArtifacts\Bentlyprojectexplorer.zip -DestinationPath C:\buildArtifacts -Force -Verbose
cd C:\buildArtifacts\Bentley_ProjectWiseExplorer_x64_10.00.3434\Package\x64\
.\Bentley_ProjectWiseExplorer_x64_10.00.3434_ALL_R1_Install.vbs
Sleep 150
cd\
#cd C:\buildArtifacts\Bentley_ProjectWiseWebServerClientComponents_x64_8.11.11\Package\AppV\
#.\Bentley_ProjectWiseWebServerClientComponents_8.11.11_ALL_R1_Install.cmd
cd C:\buildArtifacts\Bentley_ProjectWiseWebServerClientComponents_x64_8.11.11\Package\x86
.\Bentley_ProjectWiseWebServerClientComponents_8.11.11_ALL_R1_Install.cmd
sleep 120
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-bently-projectexpl-webserver
