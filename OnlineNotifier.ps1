### github.com/Rykov7 (2024)
# Simple toast notification tool that notify you when certain remote host is online.


# Setup.
$remoteHost = "10.1.1.17"

# Visual fix.
1..5 | ForEach-Object { Write-Host "`n" }  # Vertical identation to skip the Test-NetConnection pop-up.

# XML Toast Template.
# The toast template catalog:
# https://learn.microsoft.com/en-us/previous-versions/windows/apps/hh761494(v=win.10)
$xml = @"
<toast scenario="alarm">
  
  <visual>
    <binding template="ToastGeneric">
      <text>$remoteHost is online!</text>
      <text>The remote host is responding successfully now.</text>
      <text placement="attribution">$remoteHost</text>
    </binding>
  </visual>

  <actions>
    <action content='Confirm' arguments='action=accept' />
  </actions>

</toast>
"@
$XmlDocument = [Windows.Data.Xml.Dom.XmlDocument, Windows.Data.Xml.Dom.XmlDocument, ContentType = WindowsRuntime]::New()
$XmlDocument.loadXml($xml)

# Main loop.
do {
  Write-Host "Testing connection to $remoteHost…"
  $connectionTest = Test-NetConnection $remoteHost
  Start-Sleep 0.5
} until ($connectionTest.PingSucceeded)


$PowerShell = "{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\WindowsPowerShell\v1.0\powershell.exe"  # Use of GUID explained:
# https://learn.microsoft.com/en-us/dotnet/desktop/winforms/controls/known-folder-guids-for-file-dialog-custom-places

# Show notification.
[Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime]::CreateToastNotifier($PowerShell).Show($XmlDocument)
