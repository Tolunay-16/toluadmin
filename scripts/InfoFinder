Write-Host "=== Systeminformationen ==="
Write-Host "PC-Name: $env:COMPUTERNAME"

$bios = Get-CimInstance -ClassName Win32_BIOS
Write-Host "Seriennummer: $($bios.SerialNumber)"
Write-Host "BIOS-Version: $($bios.SMBIOSBIOSVersion)"

$cs = Get-CimInstance -ClassName Win32_ComputerSystem
Write-Host "Hersteller: $($cs.Manufacturer)"
Write-Host "Modell: $($cs.Model)"

$cpu = Get-CimInstance -ClassName Win32_Processor
Write-Host "CPU: $($cpu.Name)"
Write-Host "CPU-Frequenz: $($cpu.MaxClockSpeed) MHz"

$mb = Get-CimInstance -ClassName Win32_BaseBoard
Write-Host "Mainboard: $($mb.Manufacturer) $($mb.Product)"
Write-Host "Mainboard Seriennummer: $($mb.SerialNumber)"

$os = Get-CimInstance -ClassName Win32_OperatingSystem
Write-Host "Betriebssystem: $($os.Caption)"
Write-Host "Windows-Version: $($os.Version)"

Write-Host "=== IP-Adressen ==="
$ipAddrs = Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.IPAddress -notlike '169.*'} | Select-Object -ExpandProperty IPAddress
$ipAddrs | ForEach-Object { Write-Host "IPv4: $_" }
