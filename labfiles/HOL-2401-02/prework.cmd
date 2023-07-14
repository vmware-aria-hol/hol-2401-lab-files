@echo off

setlocal enabledelayedexpansion

:: Define the server IP address
set "server_ip=192.168.110.120"
set "winserver_ip=192.168.110.121"



:: Define the login name
set "username=root"

:: Set the local and remote directories
set "local_directory=C:\hol-2401-lab-files\labfiles\HOL-2401-02"
set "remote_directory=/root"
set "winremote_directory=\Users\Administrator.CORP\Downloads"

:: Define the file extension
set "file_extension=sh"
set "winfile_extension=cmd"

cls

echo Processing server %server_ip% with username %username%

:: Copy files from local to remote server
pscp -r "%local_directory%\*.%file_extension%" %username%@%server_ip%:%remote_directory% 
echo Processing server %server_ip% with CORP\Administrator
robocopy "%local_directory%" "\\%winserver_ip%\%winremote_directory%" %winfile_extension% /XO /ZB /r:1 /w:1 

:: Set file permissions on the remote server
plink -ssh -batch %username%@%server_ip% "chmod 755 %remote_directory%/*.%file_extension%"
plink -ssh -batch %username%@%server_ip% "sed -i -e 's/\r$//' %remote_directory%/*.%file_extension%"


set "remote_directory=/opt/vmware"
:: Copy files from local to remote server
pscp -r "%local_directory%\*.%file_extension%" %username%@%server_ip%:%remote_directory% 

:: Set file permissions on the remote server
plink -ssh -batch %username%@%server_ip% "chmod 755 %remote_directory%/*.%file_extension%"
plink -ssh -batch %username%@%server_ip% "sed -i -e 's/\r$//' %remote_directory%/*.%file_extension%"
