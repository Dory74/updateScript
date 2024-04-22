# Replace "X:\path\to\installer.msi" with the actual path to your MSI file
$privatePath = "\\seeka-360-fs1\private\Blake-LaptopBuilds"
$zoomPath = "$privatePath\ZoomInstallerFull.msi"
$officePath = "\\SEEKA-HQDC1\dfs\clientapps\Office365\Online Installer\OfficeSetup.exe"
$chromePath = "$privatePath\ChromeSetup.exe"
$supportAssistantPath = "$privatePath\supportAssistantInstaller.exe"

# Use msiexec.exe to install the MSI silently
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$zoomPath`" /qn" -NoNewWindow -Wait

Write-Host "Why wont this script update raw????3343"
Write-Host "Chrome Started"
Start-Process -FilePath $chromePath -NoNewWindow -Wait
Write-Host "Support Assistant Started"
Start-Process -FilePath $supportAssistantPath -NoNewWindow 
Write-Host "Office Started"
Start-Process -FilePath $officePath -ArgumentList "/quiet"
Write-Host "Office Finished"
