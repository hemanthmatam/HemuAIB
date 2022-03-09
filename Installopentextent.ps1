
$uri="https://avdappsrepository.blob.core.windows.net/appbinaries/OpenText_EnterpriseConnectFramework_x64_20.2.0.506.zip"
Invoke-WebRequest -Uri "$uri" -UseBasicParsing -OutFile "C:\buildArtifacts\Opentext20-2.zip"
Expand-Archive -LiteralPath C:\buildArtifacts\Opentext20-2.zip -DestinationPath C:\buildArtifacts -Force -Verbose
cd C:\buildArtifacts\OpenText_EnterpriseConnectFramework_x64_20.2.0.506\Package\x64
.\OpenText_EnterpriseConnectFramework_x64_20.2.0.506_ALL_R2_Install.vbs
sleep 180
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-opentext-20-2-version
