$uri2="https://avdappsrepository.blob.core.windows.net/appbinaries/Visio%20OfficeSetup.exe?sp=r&st=2022-02-18T12:43:00Z&se=2022-02-18T20:43:00Z&spr=https&sv=2020-08-04&sr=b&sig=M2RCpGRZs78wrPOc8n%2B4ah8vsRPqcIb8Bov2bPH4BEs%3D"
Invoke-WebRequest -Uri '$uri2' -UseBasicParsing -OutFile 'c:\buildArtifacts\VisioSetup.exe'
cd 'C:\buildArtifacts'
.\VisioSetup.exe
Start-Sleep -Seconds 30
