[CmdletBinding()]
Param(
  [Parameter(Mandatory = $True)]
 [String]
  $policy
)

if ($policy -eq "bypass") {
  Set-ExecutionPolicy Bypass -Force
}
