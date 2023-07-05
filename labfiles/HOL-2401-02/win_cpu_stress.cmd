@echo off
echo Starting CPU stress test...

REM Adjust the variables below to control the intensity and duration of the stress test
set duration_seconds=660
set num_threads=10

REM Calculate the end time based on the duration in seconds
set /a end_time=%time:~0,2%*3600 + %time:~3,2%*60 + %time:~6,2% + %duration_seconds%

REM Start multiple instances of the 'certutil' command in a loop to simulate CPU load
for /l %%i in (1,1,%num_threads%) do (
    start "CPU Stress Thread %%i" cmd /c certutil -encodehex "C:\Windows\System32\ntoskrnl.exe" nul
)

REM Wait until the specified duration has passed
:WAIT
set /a current_time=%time:~0,2%*3600 + %time:~3,2%*60 + %time:~6,2%
if %current_time% LSS %end_time% (
    timeout /t 1 > nul
    goto WAIT
)

echo CPU stress test completed.
