Windows Powershell App pre installed on Windows 10

Install DBA Tools: Install-Module dbatools

Allow script execution:
	Run Powershall as Admin
	set-executionpolicy remotesigned

Setup a default sctipt to execute when Powershell is opened:

	create: C:\Users\ckish.HS\Documents\WindowsPowerShell\profile.ps1
	
	Add powershell command to the file, eg.
	
Write-Host "Hi Col, welcome back!"

cd "C:\Users\ckish.HS\Source\Repos\colkish\Powershell"

Run a Poershell script from:

.\ScriptName.ps1
