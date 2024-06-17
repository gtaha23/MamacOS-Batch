@echo off
title MamacOS
color 1F
cls

echo   --------------------------
echo  /__________________________\
echo / -------------------------- \
echo \ ---- MamaCode Studios ---- /
echo  \ ------------------------ /
echo   -------------------------
goto main

:main
echo Welcome to MamacOS
ping localhost -n 3 > nul

echo This Operating system is still on moderation

ping localhost -n 2 > nul
goto :start

:start
echo _________________________
echo *--------Welcome--------*
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
echo - github_repo (givesyou the repository link)
set /p PROGRAM= What do you want to do?:
if /i "%PROGRAM%"=="enter" goto :enter
if /i "%PROGRAM%"=="logs" goto :logs
if /i "%PROGRAM%"=="colors" goto :colors
if /i "%PROGRAM%"=="fullscreen" goto :fullscreen
if /i "%PROGRAM%"=="version_control" goto :version_control
if /i "%PROGRAM%"=="see" goto :see
if /i "%PROGRAM%"=="exit" goto :exit
if /i "%PROGRAM%"=="about" goto :about
if /i "%PROGRAM%"=="github_repo" goto :github_repo
echo Invalid command. Please try again.
pause > nul
cls
goto :start
echo _________________________
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
echo v0.0.1 / 21.04.2024 \
ping localhost -n 2 > nul 
echo v0.0.2 / 26.05.2024 \
ping localhost -n 2 > nul
echo v0.0.3 / 12.06.2024 \
ping localhost -n 2 > nul
echo v0.0.4 / 13.06.2024 \
ping localhost -n 2 > nul
echo v0.0.5 / 13.06.2024 \
ping localhost -n 2 > nul
echo v0.0.6 / 13.06.2024 \
ping localhost -n 2 > nul
echo v0.0.7 / 14.06.2024 \
ping localhost -n 2 > nul
echo v0.0.8 / 14.06.2024 \
ping localhost -n 2 > nul
echo v0.0.9 / 15.06.2024 \
ping localhost -n 2 > nul
echo v0.1.0 / 17.06.2024 \
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
echo The version is v0.0.9
pause > nul
cls
goto :start

:see
echo The files are
echo -----------------------
echo Extras (folder)
ping localhost -n 2 > nul
echo Ders.bat 
ping localhost -n 2 > nul
echo Math.bat 
ping localhost -n 2 > nul
echo Menu.bat 
ping localhost -n 2 > nul
echo README.md
ping localhost -n 2 > nul
echo test.txt
echo -----------------------
pause
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
echo Their names are Gokhan Taha and Akay Tuna,
ping localhost -n 3 > nul
echo This project is on currently moderation
ping localhost -n 3 > nul
echo Make sure to support us on github!
echo -----------
pause
cls
goto :start

:github_repo
echo The github repositorys link:
ping localhost -n 3 > nul
echo.
echo https://github.com/gtaha23/MamacOS-Batch
echo.
pause > nul
cls 
goto :start