$uri="https://avdappsrepository.blob.core.windows.net/appbinaries/SAP_ERPBusinessUserClientSuite_2.2.zip"
Invoke-WebRequest -Uri "$uri" -UseBasicParsing -OutFile "C:\buildArtifacts\SAPuserclient.zip"
Expand-Archive -LiteralPath C:\buildArtifacts\SAPuserclient.zip -DestinationPath C:\buildArtifacts -Force -Verbose
cd C:\buildArtifacts\SAP_ERPBusinessUserClientSuite_2.2\Package\x86
.\SAP_ERPSupportUserClientSuite_2.2_ALL_R1_Install.vbs
sleep 180
