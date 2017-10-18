# Not using Get-ExecutionPolicy because that shows 'Bypass' due to the remote connection
# instead of the actual execution policy on local system.

$key = 'HKLM:\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell'
Write-Output (Get-ItemProperty -Path $key).ExecutionPolicy
