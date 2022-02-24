$uri="https://avdappsrepository.blob.core.windows.net/appbinaries/FileOpen_FileOpenPlugin_x64_3.0.170.996.zip"
Invoke-WebRequest -Uri "$uri" -UseBasicParsing -OutFile "C:\buildArtifacts\FileOpenPlugin.zip"
Expand-Archive -LiteralPath "C:\buildArtifacts\FileOpenPlugin.zip" -DestinationPath "C:\buildArtifacts" -Force -Verbose
cd C:\buildArtifacts\FileOpen_FileOpenPlugin_x64_3.0.170.996\Package\x64
.\FileOpenSystems_PlugIn_x64_3.0.170.996_ALL_R1_Install.vbs
sleep 30
