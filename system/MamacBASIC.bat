@echo off
title MamacOS-system/MamacBASIC
color 1F

echo ***********************************
echo Welcome to MamacBASIC-shell!
echo ------------------------------
echo Write -exit to exit the shell.

:main
echo ------------------------------
set /p KOMUT= Command: 
if "%KOMUT%"=="-exit" (
    echo exiting...
    echo ***********************************
    ping localhost -n 3 > nul
    call Ders.bat || echo Failed to call Ders.bat
) else (
    call %KOMUT%
) 
pause
goto :main
