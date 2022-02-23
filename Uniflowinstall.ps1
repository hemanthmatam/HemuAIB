$uri5="https://avdappsrepository.blob.core.windows.net/appbinaries/MomSmartClient_x64_transportnp_multi-instance_20220113.msi"
Invoke-WebRequest -Uri "$uri5" -UseBasicParsing -OutFile "c:\buildArtifacts\momsmartclient.msi"
cd "C:\buildArtifacts"
.\momsmartclient.msi /quiet
Start-Sleep -Seconds 120
