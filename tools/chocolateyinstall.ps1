$ErrorActionPreference = 'Stop';

$packageName        = 'ctop'
$version            = '0.7.4'
$url64              = "https://github.com/bcicen/ctop/releases/download/v"+$version+"/ctop-"+$version+"-windows-amd64"
$checksum64         = "a0560954705484c07a421d414b140bcd08be8bd71209523c7e0921eb702c8827"
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"


$packageArgs = @{
  packageName   = $packageName
  FileFullPath  = "$toolsDir\ctop.exe"
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}
try {
  # if running, choco cannot copy file
  Get-Process "ctop" | Stop-Process -Force
}
catch {
  exit (-1)
}
Get-ChocolateyWebFile @packageArgs
