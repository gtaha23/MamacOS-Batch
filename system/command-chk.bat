@echo off
title MamacOS-system/command-chk
color 1F

:main
echo *********** Welcome ***********
echo MamacOS commands info:
echo 18 commands in the O.S
ping localhost -n 2 > nul 
echo 11 commands in the O.S menu
ping localhost -n 2 > nul
echo +10 commands different in each TUI based file
ping localhost -n 2 > nul
echo +5 commands being updated in each release
ping localhost -n 2 > nul
echo At least 1 command is being added on every update
ping localhost -n 2 > nul
echo ******************************
pause
echo You can type -exit to return. 
set /p KARAR= -= 
if "%KARAR%"=="-exit" (
    echo exiting. . .
    ping localhost -n 2 > nul
    call Ders.bat
) else (
    echo restarting. . .
    ping localhost -n 2 > nul
    goto :main
)