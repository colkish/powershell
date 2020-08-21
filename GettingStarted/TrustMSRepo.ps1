Write-Host "By default even MS repo not trusted"
Get-PSRepository
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
Get-PSRepository