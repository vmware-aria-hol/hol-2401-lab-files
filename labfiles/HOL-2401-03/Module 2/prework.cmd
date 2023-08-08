@echo off
setlocal enabledelayedexpansion

:: Define the remote server IP address
set "server_ip=192.168.110.120"

:: Define the login name
set "username=root"

:: Set the local and remote directories
set "local_directory=C:\hol-2401-lab-files\labfiles\HOL-2401-02"
set "remote_directory=/root"

:: Define the file extension
set "file_extension=sh"
cls

echo Processing server %server_ip% with username %username%

:: Copy files from local to remote server
pscp -r "%local_directory%\*.%file_extension%" %username%@%server_ip%:%remote_directory% 

:: Set file permissions on the remote server
plink -ssh -batch %username%@%server_ip% "chmod 755 %remote_directory%/*.%file_extension%"
plink -ssh -batch %username%@%server_ip% "sed -i -e 's/\r$//' %remote_directory%/*.%file_extension%"

set "remote_directory=/opt/vmware"
:: Copy files from local to remote server
pscp -r "%local_directory%\*.%file_extension%" %username%@%server_ip%:%remote_directory% 

:: Set file permissions on the remote server
plink -ssh -batch %username%@%server_ip% "chmod 755 %remote_directory%/*.%file_extension%"
plink -ssh -batch %username%@%server_ip% "sed -i -e 's/\r$//' %remote_directory%/*.%file_extension%"
