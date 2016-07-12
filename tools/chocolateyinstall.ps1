$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName  = 'matchmaking-server-picker' # arbitrary name for the package, used in messages
$url          = 'http://files.gamebanana.com/tools/matchmaking_server_picker_45.zip' # download url
$checksum     = '9d8ca18ca35930967bb3d619f4e3132a197f452a' # calcualted with 'CertUtil -hashfile <file> sha1'
$checksumType = 'sha1'

Install-ChocolateyZipPackage $packageName `
  -Url $url `
  -Checksum $checksum `
  -ChecksumType $checksumType `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
