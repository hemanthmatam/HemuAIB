$Applist =@('Microsoft.ZuneVideo','Microsoft.ZuneMusic','Microsoft.MicrosoftSolitaireCollection','Microsoft.People','Microsoft.SkypeApp','Microsoft.WindowsSoundRecorder','Microsoft.Xbox.TCUI','Microsoft.XboxApp','Microsoft.XboxGameOverlay','Microsoft.XboxGamingOverlay','Microsoft.XboxSpeechToTextOverlay')
ForEach ($App in $Applist) {
$App = $App.TrimEnd()
$PackageFullName = (Get-AppxPackage $App).PackageFullName
$ProPackageFullName = (Get-AppxProvisionedPackage -online | where {$_.Displayname -eq $App}).PackageName



if ($PackageFullName) {
start-sleep -Seconds 5
remove-AppxPackage -package $PackageFullName
}
else {
"Unable to find package: $App"
}



if ($ProPackageFullName) {
start-sleep -Seconds 5
Remove-AppxProvisionedPackage -online -packagename $ProPackageFullName
}
else {
"Unable to find provisioned package: $App"
}
}
start-sleep -Seconds 120
