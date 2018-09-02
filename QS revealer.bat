::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFD5YRTimM2ivC7AS/PvHyOOTilgfaMMvfZeW6qaLJOEH5Vf3SZc902JKis4IDQ9XbAGUWVoylmdBuWrLPsST0w==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
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
::Zh4grVQjdCyDJGyX8VAjFD5YRTimM2ivC7AS/PvHyOOTilgfaMMvfZeW6qaLJOEH5Vf3Sbc902JqmdgfOhJdaVyudgpU
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title QS Revealer
echo welcome to QS Revealer
:A
set /p input=QSR:
if ip == %input% goto E
if sys == %input% goto F
if all == %input% goto D
if wifi == %input% goto C
if all/file == %input% goto B
if help == %input% goto help
if exit == %input% goto leave
if pwd == %input% goto G
echo Unknown command
goto A
:B
set logfile=report.txt
echo ========================================>> %logfile%
echo #                                      #>> %logfile%
echo #                  $$$                 #>> %logfile%
echo #             APEXPASSVIEW             #>> %logfile%
echo #                 REPORT               #>> %logfile%
echo #                  $$$                 #>> %logfile%
echo #                                      #>> %logfile%
echo ========================================>> %logfile%
echo ->> %logfile%
echo PASSWORDS>> %logfile%
echo ->> %logfile%
laZagne_x64.exe all>> %logfile%
echo ->> %logfile%
echo SYSTEMINFO>> %logfile%
echo ->> %logfile%
systeminfo >> %logfile%
echo ->> %logfile%
echo IPINFO>> %logfile%
echo ->> %logfile%
ipconfig/all >> %logfile%
start report.txt
goto A

:C
netsh wlan show profile
set /p wifi=interface:
netsh wlan show profile %wifi% key=clear
goto A

:D
echo =============================
echo #                           #
echo #           $$$             #
echo #       APEXPASSVIEW        #
echo #          REPORT           #
echo #           $$$             #
echo #                           #
echo =============================
echo -
echo PASSWORDS
echo -
laZagne_x64.exe all
echo -
echo IPINFO
echo -
systeminfo 
echo -
echo IPINFO
echo -
ipconfig
goto A

:help
echo ip 
echo sys 
echo all 
echo wifi
echo all/file
echo pwd
echo exit
goto A

:E
ipconfig
goto A

:F
systeminfo
goto A

:G
laZagne_x64.exe all
goto A

:leave