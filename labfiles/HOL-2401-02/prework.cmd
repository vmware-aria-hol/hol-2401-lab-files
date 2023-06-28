@echo off
setlocal enabledelayedexpansion

:: Define the array of server IP addresses
set "server_ips=192.168.110.120 192.168.110.122"

:: Define the login name
set "username=root"

:: Set the local and remote directories
set "local_directory=C:\hol-2401-lab-files\labfiles\HOL-2401-02"
set "remote_directory=/root"

:: Define the array of file extensions
set "file_extensions=sh cmd"

cls

:: Iterate over each server IP address
for %%A in (%server_ips%) do (
    set "server_ip=%%A"

    echo Processing server !server_ip! with username %username%

    :: Iterate over each file extension
    for %%B in (%file_extensions%) do (
        set "file_extension=%%B"

        :: Copy files from local to remote server
        pscp -r "%local_directory%\*.!file_extension!" %username%@!server_ip!:%remote_directory% --batch

        :: Set file permissions on the remote server
        plink -ssh -batch %username%@!server_ip! "chmod 755 %remote_directory%\*.!file_extension!"
    )
)
