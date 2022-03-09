$uri="https://avdappsrepository.blob.core.windows.net/appbinaries/Qualys_CloudSecurityAgent_4.4.0.38_R1.zip"
Invoke-WebRequest -Uri "$uri" -UseBasicParsing -OutFile "C:\buildArtifacts\QualysAgent.zip"
Expand-Archive -LiteralPath "C:\buildArtifacts\QualysAgent.zip" -DestinationPath "C:\buildArtifacts" -Force -Verbose
cd C:\buildArtifacts\Qualys_CloudSecurityAgent_4.4.0.38_R1\Package\x64\
.\Qualys_CloudSecurityAgent_x64_4.4.0.38_ALL_R1_Install.vbs
Sleep 10
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-Qualys-Agent
