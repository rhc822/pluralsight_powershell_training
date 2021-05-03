Get-CimInstance Win32_PhysicalMemory -ComputerName AHC-JRYQPQ2
(Get-CimInstance Win32_PhysicalMemory -ComputerName AHC-JRYQPQ2).Capacity
(((Get-CimInstance Win32_PhysicalMemory -ComputerName AHC-JRYQPQ2).Capacity | Measure-Object -Sum).Sum)
((((Get-CimInstance Win32_PhysicalMemory -ComputerName AHC-JRYQPQ2).Capacity | Measure-Object -Sum).Sum)/1gb)