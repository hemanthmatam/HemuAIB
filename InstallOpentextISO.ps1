$uri="https://avdappsrepository.blob.core.windows.net/appbinaries/OpenText_EnterpriseConnectFramework_x64_16.2.10.293.zip"
Invoke-WebRequest -Uri "$uri" -UseBasicParsing -OutFile "C:\buildArtifacts\Opentext16-2.zip"
Expand-Archive -LiteralPath C:\buildArtifacts\Opentext16-2.zip -DestinationPath C:\buildArtifacts -Force -Verbose
cd C:\buildArtifacts\OpenText_EnterpriseConnectFramework_x64_16.2.10.293\Package\x64
.\OpenText_EnterpriseConnectFramework_x64_16.2.10.293_ALL_R1_Install.vbs
sleep 180
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-opentext-16-2-version
