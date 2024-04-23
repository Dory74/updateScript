
$privatePath = "\\seeka-360-fs1\private\Blake-LaptopInstallers"
$zoomPath = "$privatePath\ZoomInstallerFull.msi"
$officePath = "\\SEEKA-HQDC1\dfs\clientapps\Office365\Online Installer\OfficeSetup.exe"
$chromePath = "$privatePath\ChromeSetup.exe"
$supportAssistantPath = "$privatePath\supportAssistantInstaller.exe"

# Use msiexec.exe to install the MSI silently
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$zoomPath`" /qn" -NoNewWindow
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$chromePath`" /qn" -NoNewWindow
Start-Process -FilePath $supportAssistantPath -ArgumentList "/s", "/a", "/v/qn" -NoNewWindow


Write-Host "Why wont this script update raw????7"
Start-Process -FilePath $officePath -NoNewWindow 
Write-Host "Office Finished"
