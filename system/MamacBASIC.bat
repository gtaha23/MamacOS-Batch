@echo off
title MamacOS-MamacBASIC
color 1F

:main
echo Welcome to MamacBASIC-shell!
echo Write -exit to exit the shell.
set /p KOMUT= Command: 
if "%KOMUT%"=="-exit" (
    echo exiting...
    ping localhost -n 3 > nul
    call Ders.bat
) else (
    call %KOMUT%
) 
pause
goto :main
