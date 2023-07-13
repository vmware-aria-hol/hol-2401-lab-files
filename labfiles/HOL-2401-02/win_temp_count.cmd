@echo off
setlocal enabledelayedexpansion

set folderpath=%TEMP%
:: # set folderpath=C:\TEMP

set /a count=0

for /R "%folderpath%" %%A in (*) do (
    set /a count=!count!+1
)

echo !count!
endlocal

:: # echo Number of files in %folderpath%: !count!
:: # exit /b !count!
