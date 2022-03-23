$uri="https://avdappsrepository.blob.core.windows.net/appbinaries/Fonts_PublicSansNSW_1.0.zip"
Invoke-WebRequest -Uri "$uri" -UseBasicParsing -OutFile "c:\buildArtifacts\SANSfonts.zip"
Expand-Archive -LiteralPath C:\buildArtifacts\SANSfonts.zip -DestinationPath C:\buildArtifacts -Force -Verbose
$supportedFonts = @{".ttf" = "TrueType"}
$FontPath= "C:\buildArtifacts\Fonts_PublicSansNSW_1.0"
$fonts=Get-ChildItem -Path $FontPath
$fontRegistryLocation = "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Fonts"

foreach ($font in $fonts )
{
$fontType = $font.Extension
Copy-Item -Path $font.FullName -Destination "C:\Windows\Fonts\" -Force
New-ItemProperty -Name "$($font.BaseName) ($($supportedFonts[$fontType]))" -Path $fontRegistryLocation -PropertyType string -Value $font.Name -Force
}

Sleep 30
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-newPublicsansFonts
