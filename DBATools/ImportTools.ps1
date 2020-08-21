Write-Host "Must be Admin To Set Import DBA Tools - Last Count 584 Commands!"
Install-Module dbatools
Get-Command -Module dbatools -Type Function | Measure-Object