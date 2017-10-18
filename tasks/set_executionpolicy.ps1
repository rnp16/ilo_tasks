[CmdletBinding()]
Param(
  [Parameter(Mandatory = $False)]
 [String]
  $policy
  )

if ($policy -eq "bypass") {
  Set-ExecutionPolicy Bypass -Force
  $key = 'HKLM:\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell'
  Write-Output (Get-ItemProperty -Path $key).ExecutionPolicy
}
