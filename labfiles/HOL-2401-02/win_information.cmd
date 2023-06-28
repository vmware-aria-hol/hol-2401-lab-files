@echo off

REM Hostname
echo Logged on as: %USERNAME%
echo Hostname: %COMPUTERNAME%
echo Domain: %USERDNSDOMAIN%

REM IP Address
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr /c:"IPv4 Address"') do echo IP Address: %%A

REM Subnet Mask
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr /c:"Subnet Mask"') do echo Subnet Mask: %%A

REM CPU
for /f "delims=" %%A in ('powershell "Get-WmiObject -Class Win32_Processor | Select-Object -ExpandProperty Name"') do echo CPU: %%A

REM Memory
for /f "delims=" %%A in ('powershell "$mem = Get-WmiObject -Class Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum; $mem.Sum"') do echo Memory: %%A bytes

REM Disk
for /f "delims=" %%A in ('powershell "$disk = Get-WmiObject -Class Win32_LogicalDisk | Measure-Object -Property Size -Sum; $disk.Sum"') do echo Disk: %%A bytes

REM Operating System
for /f "delims=" %%A in ('powershell "Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty Caption"') do echo Operating System: %%A

REM Kernel Version
for /f "delims=" %%A in ('powershell "Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty Version"') do echo Kernel Version: %%A

REM Logged in Users
for /f %%A in ('qwinsta ^| find /c "Active"') do echo Logged in Users: %%A

REM System Uptime
for /f "delims=" %%A in ('powershell "$uptime = (Get-Date) - (Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty LastBootUpTime); $days = $uptime.Days; $hours = $uptime.Hours; $minutes = $uptime.Minutes; echo System Uptime: $days days $hours hours $minutes minutes"') do echo %%A

