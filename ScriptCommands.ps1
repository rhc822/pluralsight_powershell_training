#OS Description
$OS = (Get-CimInstance Win32_OperatingSystem -ComputerName AHC-JRYQPQ2).caption
$OS

#Disk Freespace on OS Drive
$drive = Get-CimInstance -ClassName Win32_logicaldisk | Where-Object DeviceId -EQ 'C:'
$Freespace = (($drive.Freespace)/1gb)
$drive
$Freespace

#Amount of System Memory
$MemoryInGD = ((((Get-CimInstance Win32_PhysicalMemory -ComputerName AHC-JRYQPQ2).Capacity | Measure-Object -Sum).Sum)/1gb)

#Last Reboot of System
$LastReboot = (Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName AHC-JRYQPQ2).LastBootUpTime

#IP Address & DNS Name
$DNS = Resolve-DnsName -Name AHC-JRYQPQ2 | Where-Object Type -eq "A"
$DNSName = $DNS.Name
$DNSIP = $DNS.IPAddress
$DNS
$DNSName
$DNSIP

#DNS Server of Target
$CimSession = New-CimSession -ComputerName AHC-JRYQPQ2 -Credential (Get-Credential)
(Get-DnsClientServerAddress -CimSession $CimSession -InterfaceAlias "ethernet" -AddressFamily IPv4).ServerAddresses

#Write Output to Screen

