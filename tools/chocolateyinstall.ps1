$ErrorActionPreference = 'Stop';

$packageName        = 'ctop'
$version            = '0.7.7'
$url64              = "https://github.com/bcicen/ctop/releases/download/v"+$version+"/ctop-"+$version+"-windows-amd64"
$checksum64         = "77a980cbd716e63fc6b3ca9ec8c78d5e602c3d02e88d4a7613033dd4caeda5a7"
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"


$packageArgs = @{
  packageName   = $packageName
  FileFullPath  = "$toolsDir\ctop.exe"
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Get-ChocolateyWebFile @packageArgs
