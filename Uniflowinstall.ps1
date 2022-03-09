$uri5="https://avdappsrepository.blob.core.windows.net/appbinaries/MomSmartClient_x64transport_multi-instance_20220222 prod.msi"
Invoke-WebRequest -Uri "$uri5" -UseBasicParsing -OutFile "c:\buildArtifacts\momsmartclient.msi"
cd "C:\buildArtifacts"
.\momsmartclient.msi /quiet
Start-Sleep -Seconds 120
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-Canon-Smartprint-Uniflow-20222
