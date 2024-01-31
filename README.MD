# OnlineNotifier
Simple toast notification tool for Windows that informs you when a certain remote host becomes online.

## Requirements
Windows 10/11 and ability to run PowerShell scripts.

To allow ps1 scripts to be run, enter the following command in PowerShell:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned CurrentUser
```

## Usage
Simply substitute the value of the variable `$remoteHost` to your IP or domain name, and it is ready to run.


## About
This simple script is intended to inform you when a certain remote host becomes online.
I needed such a script to receive notifications about my job's remote server being online after periodic outages. My requirements were:

* It works out of the box with no external modules. 
* The code should be simple and clear, with documentation links for quick modifications.
