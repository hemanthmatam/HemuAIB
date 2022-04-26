$uri0="https://avdappsrepository.blob.core.windows.net/appbinaries/Microsoft.Whiteboard_2022.404.1859.0_neutral___8wekyb3d8bbwe.AppxBundle"
Invoke-WebRequest -Uri "$uri0" -UseBasicParsing -OutFile "c:\buildArtifacts\Whiteboard2022.AppxBundle"
cd "C:\buildArtifacts"
Add-AppxProvisionedPackage -PackagePath C:\buildArtifacts\Whiteboard2022.AppxBundle -Online -SkipLicense
Start-Sleep -Seconds 150
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `nAIB-Installed-WhiteBoard
