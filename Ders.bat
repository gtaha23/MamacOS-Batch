@echo off
title MamacOS
color 1F

echo /__________________________\
goto main

:main
echo Welcome to MamacOS
ping localhost -n 3 > nul

echo This Operating system is a Batch file

ping localhost -n 2 > nul
goto :start

:start
echo __________________________
echo Welcome to MamacOS
ping localhost -n 3 > nul
echo Here is the commands
echo - enter (opens the menu)
echo - logs (shows the updates)
echo - colors (change the terminal color)
echo - fullscreen (enters the fullscreen)
echo - version_control (checks the version)
echo - see (shows the files)
echo - exit (exits the O.S)
echo - about (gives info about the creator team)
set /p PROGRAM= What do you want to do?:
goto %PROGRAM%
echo __________________________
pause > nul

:enter
set /p PASS= Enter the passcode to the menu: 
set /a CODE=1357924680
if %PASS%==%CODE% goto :file
goto :start

:file
cls
echo Entering the menu
ping localhost -n 2 > nul
start Menu.bat
goto :start

:logs
cls
echo This command shows you the updates 
ping localhost -n 2 > nul
echo -----------
echo First Creation / 19.04.2024 
ping localhost -n 2 > nul
echo v0.0.1 / 21.04.2024 
ping localhost -n 2 > nul
echo v0.0.2 / 26.05.2024 
ping localhost -n 2 > nul
echo v0.0.3 / 12.06.2024 
ping localhost -n 2 > nul
echo v0.0.4 / 13.06.2024 
ping localhost -n 2 > nul
echo v0.0.5 / 13.06.2024 
ping localhost -n 2 > nul
echo v0.0.6 / 13.06.2024 
ping localhost -n 2 > nul
echo -----------
pause > nul
cls
goto :start

:colors
cls
echo You can set the color of this program
echo ---------------------------------------------------------------------
echo 0 = Black  1 = Blue    2 = Green
echo 3 = Aqua   4 = Purple  6 = Yellow
echo 7 = White  8 = Gray     9 = L. Blue
echo A = L. Green B = L. Aqua C = L. Red
echo D = L. Purple E = L. Yellow F = Bright White
echo Enter the font color first, then enter the background color. (ex. F0)
echo ----------------------------------------------------------------------
set /p COLOR= Enter the color code.
color %COLOR%
pause > nul
cls
goto :start

:fullscreen
SET TempVBSFile=%temp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
ECHO Wscript.Sleep 900                                    >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{F11}"                            >>"%TempVBSFile%"
ECHO Wscript.Sleep 900                                    >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"
pause
cls
goto :start

:version_control
cls
set /a VERSION=0.0.6
echo The version is v%VERSION%
pause > nul
goto :start

:see
echo The files are
echo -----------------------
echo Extras (folder)
echo Ders.bat 
echo Math.bat 
echo Menu.bat 
echo README.md
echo test.txt
echo -----------------------
cls
goto :start

:exit
echo Exiting the OS. . .
ping localhost -n 3 > nul
exit /b

:about
echo This menu is a control panel for MamacOS systems
echo -----------
echo About the creator team,
ping localhost -n 3 > nul
echo They are 2 cousins and they want to make an O.S,
ping localhost -n 3 > nul
echo Their names are Gökhan Taha and Akay Tuna,
ping localhost -n 3 > nul
echo This project is on currently moderation
ping localhost -n 3 > nul
echo Make sure to support us on github!
echo -----------
pause
cls
goto :start