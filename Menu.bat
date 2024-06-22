@echo off
title MamacOS-menu
color 1F
cls

:start
echo Welcome to MamacOS-menu 
echo -------------------------
echo - create (create password)
echo - check (check password)
echo - entry (enter the main file)
echo - about (About the creator)
echo - logs (about the updates)
echo - colors (gives you info about colors)
echo - see (shows the files)
echo - version_control (checks the version)
echo - oldfetch (a command that shows you the logo and the info of the OS)
echo -------------------------
set /p PROGRAM= What do you want to do?:
if /i "%PROGRAM%"=="enter" goto :enter
if /i "%PROGRAM%"=="logs" goto :logs
if /i "%PROGRAM%"=="colors" goto :colors
if /i "%PROGRAM%"=="fullscreen" goto :fullscreen
if /i "%PROGRAM%"=="version_control" goto :version_control
if /i "%PROGRAM%"=="see" goto :see
if /i "%PROGRAM%"=="exit" goto :exit
if /i "%PROGRAM%"=="about" goto :about
if /i "%PROGRAM%"=="oldfetch" goto :oldfetch
echo Invalid command. Please try again.
pause > nul
cls
goto :start


:create
cls
set /p PASSWORD= What do you want your password to be?:
echo %PASSWORD% > test.txt
pause
cls
goto :start




:check
cls
set /p %PASSWORD1%= What is your password?
for /f "Delims=" %%a in (test.txt) do (
    set TEXT= %%a
)

if %PASSWORD%==%TEXT% goto :correct
echo you are wrong!!!
cls
pause
cls
goto :start




:correct
cls
echo you are right!!!
pause 
cls
goto :start

:entry
cls
set /p ENTRYCODE= Enter the code to enter the main file: 
set /a PASS=passwordisthis
if %ENTRYCODE%==%PASS% goto :mainfile
pause

:mainfile
echo Entering the main file...
ping localhost -n 3 > nul
start Ders.bat

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

:logs
cls
echo This command shows you the updates 
ping localhost -n 2 > nul
echo -----------
echo First Creation / 19.04.2024 \
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
echo v0.1.1 / 22.06.2024 \
ping localhost -n 2 > nul
echo v0.1.2 / 22.06.2024 \
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
echo test.txt
echo -----------------------
pause
cls
goto :start

:version_control
cls
echo The version is v0.1.2
pause > nul
goto :start

:oldfetch
cls
echo     MM     MM          CCC       OOOOOO     SSSSS     Name: MamacOS
echo    MM MM MM MM       CCC       OOO    OOO  SS         User: %USERNAME%
echo   MM   MM    MM      CCC       OOO    OOO    SSSS     Creator: MamaCode Studios
echo  MM           MM     CCC       OOO    OOO       SS    Current Version: v0.1.2
echo MM             MM  O   CCC       OOOOOO     SSSSS     Current File: Menu.bat
pause > nul
cls
goto :start