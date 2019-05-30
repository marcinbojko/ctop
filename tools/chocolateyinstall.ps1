$ErrorActionPreference = 'Stop';

$packageName        = 'ctop'
$version            = '0.7.2'
$url64              = "https://github.com/bcicen/ctop/releases/download/v"+$version+"/ctop-"+$version+"-windows-amd64"
$checksum64         = "552c44852e29891662891e38a290d058a168d995e3cc8f66effe147ca0636c8e"
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"


$packageArgs = @{
  packageName   = $packageName
  FileFullPath  = "$toolsDir\ctop.exe"
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Get-ChocolateyWebFile @packageArgs
