# OnlineNotifier
Simple toast notification tool for Windows that inform you when certain remote host become to be online.


## Requirements
Windows 10/11 and ability to run PowerShell scripts.

To allow ps1 scripts to be run, enter the following command in PowerShell:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned CurrentUser
```

## Usage
Simply substitute the value of the variable `$remoteHost` to your IP or domain name, and it is ready to run.


## About
This simple script is intended you to be informed by your computer when a certain remote host become online.
I needed such a script to get informed about my job's remote server is online after periodical outages.
My requirements were:
 * Working out of the box with no external modules.
 * Simple and clear code with documentation links to quickly modify it.