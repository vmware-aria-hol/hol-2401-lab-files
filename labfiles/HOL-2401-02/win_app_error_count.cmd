@echo off
:: This script retrieves and analyzes the Application event log for errors.

:: Set the logFile variable to the path of the Application event log (Application.evtx).
:: Update the path if your log file is located elsewhere.
set logFile=c:\Windows\System32\winevt\Logs\Application.evtx

:: Set the tempFile variable to a temporary file path (%temp%\templog.txt).
:: %temp% represents the path to the user's temporary directory.
set "tempFile=%temp%\temp-app-log.txt"

:: Initialize the errorCount variable to 0. It will be used to keep track of the number of errors found.
set "errorCount=0"

:: Query the Application event log (%logFile%) and retrieve the most recent event (/c:1).
:: Redirect the output to the temporary file specified by %tempFile%.
:: /rd:true includes all events, including those that are archived.
:: /f:text specifies the output format as plain text.
wevtutil qe "%logFile%" /c:1 /rd:true /f:text > %tempFile%

for /f "usebackq delims=" %%a in ("%tempFile%") do (
    echo %%a | findstr /i /c:"[error]" > nul
    :: Read each line of the temporary log file (%tempFile%).
    :: Echo the line and pipe it (|) to the findstr command, which searches for the string "[error]" (case-insensitive) in the line.
    :: > nul discards the output of the findstr command.
    :: If the search result is not empty (i.e., an error is found), increment the errorCount and echo the line containing the error.
    if not errorlevel 1 (
        set /a errorCount+=1
        echo %%a
    )
)

:: Delete the temporary log file (%tempFile%) after the analysis is complete.
del %tempFile%

:: Output the total number of errors found (%errorCount%) during the analysis.
echo Total Errors Found: %errorCount%

exit /b %errorCount%
:: Set the exit code of the batch file to the value of errorCount.

