@echo off
title MamacOS-system/MamacBASIC
color 1F

:main
echo ***********************************
echo Welcome to MamacBASIC-shell!
echo ------------------------------
echo Write -exit to exit the shell.
set /p KOMUT= Command: 
if "%KOMUT%"=="-exit" (
    echo exiting...
    echo ***********************************
    ping localhost -n 3 > nul
    call Ders.bat
) else (
    call %KOMUT%
) 
pause
goto :main
