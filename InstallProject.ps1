$uri3="https://avdappsrepository.blob.core.windows.net/appbinaries/Project OfficeSetup.exe"
Invoke-WebRequest -Uri '$uri3' -UseBasicParsing -OutFile "c:\buildArtifacts\ProjectSetup.exe"
Start-Sleep -Seconds 10
cd 'c:\buildArtifacts'
.\ProjectSetup.exe"
Start-Sleep -Seconds 30