$uri4 = "https://avdappsrepository.blob.core.windows.net/appbinaries/CitrixWorkspaceApp19.12.6000.zip"
Invoke-WebRequest -Uri '$uri4' -UseBasicParsing -OutFile "c:\buildArtifacts\CitrixWorkspaceApp.zip"
Expand-Archive -LiteralPath "C:\buildArtifacts\CitrixWorkspaceApp.zip" -DestinationPath "C:\buildArtifacts" -Force -Verbose
cd "C:\buildArtifacts"
.\CitrixWorkspaceApp.exe /AutoUpdateCheck=disabled /silent
