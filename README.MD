# OnlineNotifier
A toast notification PowerShell script that informs you when a certain remote host becomes online.

## Requirements
Windows 10/11 and ability to run PowerShell scripts.

To allow ps1 scripts to be run, enter the following command in PowerShell:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned CurrentUser
```

## Usage
1. Substitute the value of the variable `$remoteHost` with an IP or domain name of a down remote host you want to trace.
2. Run the `OnlineNotifier.ps1` file with double-click. It will keep attempting to connect to the host until it succeeds.
3. When the host becomes online, you will see a native Windows toast notification with the default alarm sound.
4. Click the 'Confirm' button to close the notification.


## About
This simple script is intended to inform you when a certain remote host becomes online.
I needed such a script to receive notifications about my job's remote server being online after periodic outages. My requirements were:

* It works out of the box with no external modules. 
* The code should be simple and clear, with documentation links for quick modifications.
