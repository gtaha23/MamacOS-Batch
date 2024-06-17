@echo off
title MamacOS-Startup
color 1F

:main
echo Looking for the OS, please wait. . .
ping localhost -n 5 > nul
if exist Ders.bat (
    echo OS found, starting. . .
    ping localhost -n 3 > nul
    call Ders.bat
)
else (
    echo OS not found :d
    echo To download the OS visit the github repository.
)
pause