$ErrorActionPreference = 'Stop';

$packageName        = 'ctop'
$version            = '0.7.6'
$url64              = "https://github.com/bcicen/ctop/releases/download/"+$version+"/ctop-"+$version+"-windows-amd64"
$checksum64         = "8e9badf4f03e289a551694604fef2df9584d0ec17787fd54aefa1b950dd63e17"
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"


$packageArgs = @{
  packageName   = $packageName
  FileFullPath  = "$toolsDir\ctop.exe"
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Get-ChocolateyWebFile @packageArgs
