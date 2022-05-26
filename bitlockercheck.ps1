$powershellversion = $PSVersionTable.PSVersion.Major

if ($powershellversion -lt 4){
    Write-Host "Upgrade Powershell Version"
    Exit 1010
}
else
{

$bitlockerkey = (Get-BitLockerVolume -MountPoint C).KeyProtector.RecoveryPassword
$pcsystemtype = (Get-WmiObject -Class Win32_ComputerSystem).PCSystemType
if ($pcsystemtype -eq "2"){
$setsystemtype = "Laptop"
}
else {
$setsystemtype = "Desktop"
}