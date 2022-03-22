$uri="https://avdappsrepository.blob.core.windows.net/appbinaries/Fonts_PublicSansNSW_1.0.zip"
Invoke-WebRequest -Uri "$uri" -UseBasicParsing -OutFile "c:\buildArtifacts\SANSfonts.zip"
Expand-Archive -LiteralPath C:\buildArtifacts\SANSfonts.zip -DestinationPath C:\buildArtifacts -Force -Verbose
cd C:\buildArtifacts\Fonts_PublicSansNSW_1.0
$fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)
Get-ChildItem -Recurse -include *.ttf | % { $fonts.CopyHere($_.fullname) }
Sleep 90
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-PublicsansFonts
