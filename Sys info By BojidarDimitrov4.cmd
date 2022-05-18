@echo off
Set WshShell = WScript.CreateObject("WScript.Shell")
:: This script provides your computer and network info
title Script By Bojidar Dimitrov
echo Please wait... Gathering system information.
echo ===========================================
timeout /t 4 /nobreak
echo.
echo OPERATING SYSTEM
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
echo =========================
timeout /t 4 /nobreak
echo.
echo BIOS
systeminfo | findstr /c:"System Type"
echo =========================
timeout /t 4 /nobreak
echo.
echo MEMORY
systeminfo | findstr /c:"Total Physical Memory"
echo =========================
timeout /t 4 /nobreak
echo.
echo CPU
wmic cpu get name
echo =========================
timeout /t 4 /nobreak
echo.
echo Network Address
ipconfig | findstr IPv4
ipconfig | findstr IPv6
echo =========================
pause