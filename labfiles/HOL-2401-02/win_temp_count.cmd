@echo off
setlocal enabledelayedexpansion

set folderpath=%TEMP%
set /a count=0

for %%A in ("%folderpath%\*") do (
    if not exist "%%~fA\" (
        set /a count=!count!+1
    )
)

echo !count!

:: # echo Number of files in %folderpath%: !count!
:: # exit /b !count!

endlocal
