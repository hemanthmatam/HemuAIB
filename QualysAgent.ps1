$uri="https://avdappsrepository.blob.core.windows.net/appbinaries/Qualys_CloudSecurityAgent_4.4.0.38_R1.zip"
Invoke-WebRequest -Uri $uri -UseBasicParsing -OutFile "C:\Repos\QualysAgent.zip"
Expand-Archive -LiteralPath "C:\Repos\QualysAgent.zip" -DestinationPath "C:\Repos" -Force -Verbose
cd C:\Repos\Qualys_CloudSecurityAgent_4.4.0.38_R1\Package\x64\
.\Qualys_CloudSecurityAgent_x64_4.4.0.38_ALL_R1_Install.vbs
Sleep 10
