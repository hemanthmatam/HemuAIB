$uri1="https://avdappsrepository.blob.core.windows.net/appbinaries/AcroRdrDC2101120039_en_US.exe"
Invoke-WebRequest -Uri "$uri1" -UseBasicParsing -OutFile "c:\buildArtifacts\Acrordr.exe"
cd C:\buildArtifacts
.\Acrordr.exe /q /s /sAll /rs /msi EULA_ACCEPT=YES AgreeToLicense=Yes RebootYesNo=No
sleep 120
