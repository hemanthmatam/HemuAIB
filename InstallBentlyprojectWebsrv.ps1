$uri="https://avdappsrepository.blob.core.windows.net/appbinaries/Bentley_ProjectWiseWebServerClientComponents_x64_8.11.11.zip"
Invoke-WebRequest -Uri "$uri" -UseBasicParsing -OutFile "c:\buildArtifacts\BentlyprojectWebserver.zip"
Expand-Archive -LiteralPath C:\buildArtifacts\BentlyprojectWebserver.zip -DestinationPath C:\buildArtifacts -Force -Verbose

cd C:\buildArtifacts\Bentley_ProjectWiseWebServerClientComponents_x64_8.11.11\Package\x86
.\Bentley_ProjectWiseWebServerClientComponents_8.11.11_ALL_R1_Install.cmd
sleep 120


Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-bently-Webserver
