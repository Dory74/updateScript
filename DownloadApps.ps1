# Replace "X:\path\to\installer.msi" with the actual path to your MSI file
$privatePath = "\\seeka-360-fs1\private\Blake-LaptopBuilds"
$zoomPath = "$privatePath\ZoomInstallerFull.msi"
$officePath = "\\SEEKA-HQDC1\dfs\clientapps\Office365\Online Installer\OfficeSetup.exe"
$chromePath = "$privatePath\ChromeSetup.exe"
$supportAssistantPath = "$privatePath\supportAssistantInstaller.exe"

# Use msiexec.exe to install the MSI silently
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$zoomPath`" /qn" -NoNewWindow -Wait
#Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$privatePath\ZoomInstallerFull.msi`" /qn" -NoNewWindow -Wait


Start-Process -FilePath $chromePath -ArgumentList "/quiet" -NoNewWindow -Wait
Start-Process -FilePath $supportAssistantPath -ArgumentList "/quiet" -NoNewWindow -Wait
#Start-Process -FilePath $officePath -ArgumentList "/quiet" -NoNewWindow -Wait
Start-Process -FilePath $officePath -NoNewWindow -Wait

#Start-Process -FilePath $chromePath -Wait
#Start-Process -FilePath $supportAssistantPath -Wait
#Start-Process -FilePath $officePath -Wait