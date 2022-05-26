$winver = (Get-WmiObject -class Win32_OperatingSystem).Caption
$powershellversion = $PSVersionTable.PSVersion.Major
$os1 = "Microsoft Windows 7 Professional"
$os2 = "Microsoft Windows 10 Pro"
$os3 = "Microsoft Windows 10 Enterprise"

if($winver -ne ($os1, $os2, $os3) -contains $winver){
    Write-Host "Bitlocker not supported on $winver"
    Exit 0
}

if($powershellversion -lt 4){
    Write-Host "Upgrade Powershell Version"
    Exit 1010
}
else