$uri4= "https://avdappsrepository.blob.core.windows.net/appbinaries/CitrixWorkspaceApp19.12.6000.exe"
Invoke-WebRequest -Uri '$uri4' -UseBasicParsing -OutFile "c:\buildArtifacts\CitrixWorkspaceApp.exe"
cd "C:\buildArtifacts"
.\CitrixWorkspaceApp.exe /AutoUpdateCheck=disabled /silent
