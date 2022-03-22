Enable-WindowsOptionalFeature -Online -FeatureName "TelnetClient" -Verbose
$telnetstatus=Get-WindowsOptionalFeature -Online -FeatureName TelnetClient |select FeatureName,State
Add-Content -Path C:\buildArtifactslogs\azureImageBuilder.txt -Value `n$telnetstatus
