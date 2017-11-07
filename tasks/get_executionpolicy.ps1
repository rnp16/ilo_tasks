# Not using Get-ExecutionPolicy because that shows 'Bypass' due to the remote connection
# instead of the actual execution policy on local system.

$HKLMkey = 'HKLM:\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell'
$HKCUkey = 'HKCU:\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell'

Write-Output "LocalMachine $((Get-ItemProperty -Path $HKLMkey).ExecutionPolicy)"
Write-Output "CurrentUser $((Get-ItemProperty -Path $HKCUkey).ExecutionPolicy)"
