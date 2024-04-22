# Replace "X:\path\to\installer.msi" with the actual path to your MSI file
$privatePath = "\\seeka-360-fs1\private\Blake-LaptopBuilds"
$zoomPath = "$privatePath\ZoomInstallerFull.msi"
$officePath = "\\SEEKA-HQDC1\dfs\clientapps\Office365\Online Installer\OfficeSetup.exe"
$chromePath = "$privatePath\ChromeSetup.exe"
$supportAssistantPath = "$privatePath\supportAssistantInstaller.exe"

# Use msiexec.exe to install the MSI silently
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$zoomPath`" /qn" -NoNewWindow -Wait
#Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$privatePath\ZoomInstallerFull.msi`" /qn" -NoNewWindow -Wait

Write-Host "Chrome Started"
Start-Process -FilePath $chromePath -ArgumentList "/qn" -NoNewWindow -Wait
Write-Host "Support Assistant Started"
Start-Process -FilePath $supportAssistantPath -ArgumentList "/qn" -NoNewWindow -Wait
Write-Host "Office Started"
#Start-Process -FilePath $officePath -ArgumentList "/quiet" -NoNewWindow -Wait
Start-Process -FilePath $officePath -ArgumentList "/qn" -NoNewWindow -Wait

#Start-Process -FilePath $chromePath -Wait
#Start-Process -FilePath $supportAssistantPath -Wait
#Start-Process -FilePath $officePath -Wait