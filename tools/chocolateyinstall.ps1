$ErrorActionPreference = 'Stop';

$packageName        = 'ctop'
$version            = '0.7.5'
$url64              = "https://github.com/bcicen/ctop/releases/download/v"+$version+"/ctop-"+$version+"-windows-amd64"
$checksum64         = "bffb1499d62c46b70dd25d557b653f812ccdc8b4bfb08473c063a6265faf78b3"
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"


$packageArgs = @{
  packageName   = $packageName
  FileFullPath  = "$toolsDir\ctop.exe"
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Get-ChocolateyWebFile @packageArgs
