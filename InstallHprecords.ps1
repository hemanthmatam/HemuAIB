New-Item -Path c:\ -ItemType Directory -Name "HPRecordsrepo"
$uri10="https://avdappsrepository.blob.core.windows.net/appbinaries/HPE_RecordsManager_x64_8.30.9365.zip"
Invoke-WebRequest -Uri "$uri10" -UseBasicParsing -OutFile "C:\HPRecordsrepo\HPE_RecordsManager.zip"
Expand-Archive -LiteralPath "C:\HPRecordsrepo\HPE_RecordsManager.zip" -DestinationPath "C:\HPrecordsrepo" -Force -Verbose
cd C:\HPRecordsrepo\HPE_RecordsManager_x64_8.30.9365\Package\x64\
.\HP_RecordsManager_x64_8.3.0.9365_ALL_R2_Install.vbs
sleep 90
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-HPRecords-Manager
