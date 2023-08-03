@echo off
setlocal enabledelayedexpansion

:: # Module 4 - Integrating and Troubleshooting with Logs 

:: # Setting error messages and source (application) in pseudo-arrays.
set "Error[1]=Could not open Bank File bank_id.txt"
set "Error[2]=Uunable to communicate with the main bank server"
set "Error[3]=The main communication service has stopped"
set "Error[4]=Unable to connect to the database bank_transaction.db"
set "Error[5]=Failed to generate the financial report for current Quarter"
set "Error[6]=Balance sheet calculation internal error"
set "Error[7]=Tax calculation service is not responding"
set "Application=The Hands-On Labs Application (Fake HOL Financial app)"

:: # Generating errors in the event log.
for /L %%i in (1,1,10) do (
    :: # Generate two random numbers.
    set /A "randError=!random! %% 7 + 1"
    set /A "randEventID=!random! %% 100 + 1"
    
    :: # Use 'call' to indirectly reference array element
    call set "errorMessage=%%Error[!randError!]%%"
    
    :: # Create the event, including the application name and "ERROR, " in the error message.
    eventcreate /ID !randEventID! /L APPLICATION /T ERROR /SO "!Application!" /D "!Application! ERROR, !errorMessage!"
)
