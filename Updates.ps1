# Set execution policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine -Force

# Install PSWindowsUpdate module without prompting
Install-Module PSWindowsUpdate -Force -Confirm:$false

# Run Windows Update and accept all updates, install them, and auto-reboot if necessary without prompting
Get-WindowsUpdate -AcceptAll -Install -AutoReboot -Confirm:$false