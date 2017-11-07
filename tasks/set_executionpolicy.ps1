[CmdletBinding()]
Param(
  [Parameter(Mandatory = $False)]
  [String]
  $policy = $env:PT_policy,
  $scope = $env:PT_scope
)

$ErrorActionPreference = "silentlycontinue"

if ($scope -eq $null -or $scope -eq "")
{
  Set-ExecutionPolicy $policy -Force
}
else
{
  Set-ExecutionPolicy $policy -Scope $scope -Force
}

$HKLMkey = 'HKLM:\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell'
$HKCUkey = 'HKCU:\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell'

Write-Output "LocalMachine $((Get-ItemProperty -Path $HKLMkey).ExecutionPolicy)"
Write-Output "CurrentUser $((Get-ItemProperty -Path $HKCUkey).ExecutionPolicy)"
