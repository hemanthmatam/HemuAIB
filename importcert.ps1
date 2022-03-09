$uri1="https://avdappsrepository.blob.core.windows.net/msix/NSW-MSIX-Test-Cert.pfx"
Invoke-WebRequest -Uri "$uri1" -UseBasicParsing -OutFile "c:\buildArtifacts\msixcert.pfx"
$secPassword = ConvertTo-SecureString -String 'Microsoft~1' -Force -AsPlainText
Import-PfxCertificate -Password $secPassword -FilePath "c:\buildArtifacts\msixcert.pfx" -CertStoreLocation "Cert:\LocalMachine\TrustedPeople"
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Imported-MSIX-Certificate
