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
echo - github_repo (gives you the repository link)
echo - oldfetch (a command that shows you the logo and the info of the OS)
echo - code_info (gives you information of the source code)
echo - about_os (gives you information about Operating systems)
echo - help (this command helps you with MamacOS)
echo - sys-info (Gives you the information about the system)
echo - update (updates the Operating system)
echo - community (info about the community)
echo - MamacBASIC (an small P.L)
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
if /i "%PROGRAM%"=="oldfetch" goto :oldfetch
if /i "%PROGRAM%"=="code_info" goto :code_info
if /i "%PROGRAM%"=="about_os" goto :about_os
if /i "%PROGRAM%"=="help" goto :help
if /i "%PROGRAM%"=="sys-info" goto :sys-info
if /i "%PROGRAM%"=="update" goto :updater
if /i "%PROGRAM%"=="community" goto :community
if /i "%PROGRAM%"=="MamacBASIC" goto :MamacBASIC
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
echo Entering the menu. . .
ping localhost -n 2 > nul
start Menu.bat
cls
goto :start

:: Yeni versiyonu eklemeyi unutma!
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
echo v0.1.3 / 23.06.2024 \
ping localhost -n 2 > nul
echo v0.1.4 / 23.06.2024 \
ping localhost -n 2 > nul
echo v0.1.5 / 24.06.2024 \
ping localhost -n 2 > nul
echo v0.1.6 / 26.06.2024 \
ping localhost -n 2 > nul
echo v0.1.7 / 28.06.2024 \
ping localhost -n 2 > nul
echo v0.1.8 / 30.06.2024 \
ping localhost -n 2 > nul
echo v0.1.9 / 01.07.2024 \
ping localhost -n 2 > nul
echo v0.2.0 / 02.07.2024 \
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

:: Versiyonları değiştirmeyi unutma!
:version_control
cls
echo *-------------------*
echo The version is v0.2.0
echo *-------------------*
pause > nul
cls
goto :start

:see
echo The files are
echo -----------------------
echo Extras (folder)
ping localhost -n 2 > nul
echo        funi joke.txt
ping localhost -n 2 > nul
echo system (folder)
ping localhost -n 2 > nul
echo        updater.bat
ping localhost -n 2 > nul
echo Ders.bat 
ping localhost -n 2 > nul
echo MamacOS_startup.bat
ping localhost -n 2 > nul
echo Math.bat 
ping localhost -n 2 > nul
echo Menu.bat 
ping localhost -n 2 > nul
echo README.md
ping localhost -n 2 > nul
echo sys-info.bat
ping localhost -n 2 > nul
echo test.txt
echo -----------------------
pause
cls
goto :start

:exit
echo Exiting the OS. . .
ping localhost -n 3 > nul
exit 

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

:: Versiyonları değiştirmeyi unutma!
:oldfetch
cls
echo     MM     MM          CCCC      //     OOOOOO     SSSSS     OS Name: MamacOS
echo    MM MM MM MM       CCCC       //    OOO    OOO  SS         Username: %USERNAME%
echo   MM   MM    MM      CCCC      //     OOO    OOO    SSSS     Creator: MamaCode Studios
echo  MM           MM     CCCC     //      OOO    OOO       SS    Current Version: v0.2.0
echo MM             MM      CCCC  //         OOOOOO     SSSSS     Current File: Ders.bat
pause > nul
cls
goto :start

:code_info
cls
echo --------------------------
echo This O.S is built with batchfile in MS Windows 11,
ping localhost -n 2 > nul
echo it is currently on moderation. The main developer of this project is Taha.
ping localhost -n 2 > nul
echo The co-founder of MamaCode Studios A.K.A Akay Tuna is currently dealing with some problems so
ping localhost -n 2 > nul
echo Taha is building this project with batchfile programming language.
echo.
echo Here is some batchfile snippets:
ping localhost -n 3 > nul
echo ______________
echo @echo off
echo color the_color
echo title the_title
echo :blah_blah
echo set /p variable_name= data
echo pause
echo.
echo goto :blah_blah
echo ______________
echo Thanks for using MamacOS!
pause > nul
cls
goto :start

:about_os
cls
echo 1- What is an O.S?
ping localhost -n 2 > nul
echo 2- Examples of Operating systems
ping localhost -n 2 > nul
echo 3- How can you create one?
ping localhost -n 2 > nul
echo 4- Is MamacOS a real O.S?
ping localhost -n 2 > nul
echo 5- exit
set /p ANS= choose one (1/2/3/4/5): 
echo.
if /i "%ANS%"=="1" echo An operating system aka OS is system software that manages computer hardware and software resources, and provides common services for computer programs.
if /i "%ANS%"=="2" echo Examples of Operating systems: Linux, Windows, macOS, Android,...
if /i "%ANS%"=="3" echo You can create an OS with a programming language e.g C for a kernel, a GUI, a bootloader etc.
if /i "%ANS%"=="4" echo Actually MamacOS is not an O.S, it is a CLI based script programs for Windows.
if /i "%ANS%"=="5" (
    pause
    cls
    goto :start
)
pause > nul
cls
goto :about_os

:help
cls
echo Hi! I am here to help you with MamacOS.
echo Select the type of your issue:
ping localhost -n 2 > nul
echo 1- I dont understand MamacOS?
ping localhost -n 2 > nul
echo 2- What is happening when i run the fullscreen command?
ping localhost -n 2 > nul
echo 3- How can i update MamacOS to the latest version?
ping localhost -n 2 > nul
echo 4- How to use MamacOS?
ping localhost -n 2 > nul
echo 5- exit
set /p OPTION= choose your problem (1/2/3/4/5): 
echo.
if /i "%OPTION%"=="1" echo MamacOS is a O.S that is CLI based, you can use the commands given in the start section.
if /i "%OPTION%"=="2" echo In the fullscreen command the menu seem stuck but if you exit a random command it changes to fullscreen, Don't worry nothing harmful happens to your PC.
if /i "%OPTION%"=="3" echo You can update via visiting the github repository, if you dont know the github repo, you can learn via github_repo command.
if /i "%OPTION%"=="4" echo You can use MamacOS for learning terminal, get used to use commands via CMD, learn the basics of batchfile programming language etc.
if /i "%OPTION%"=="5" (
    pause
    cls
    goto :start
)
pause > nul
cls
goto :help

:sys-info
cls
echo ------------------------------------------------------------------
echo.
echo Welcome %USERNAME%
echo 1- See the system information
echo 2- Exit
set /p CEVAP= choose your option (1/2): 
echo ------------------------------------------------------------------
if /i "%CEVAP%"=="1" call sys-info.bat
if /i "%CEVAP%"=="2" goto :start

:updater
cls
echo Launching updater. . .
ping localhost -n 3 > nul
call system\updater.bat

:community
echo /*****************************************\
echo The communitys are: 
ping localhost -n 3 > nul
echo Reddit: r/MamacOS
ping localhost -n 2 > nul
echo Discord: MamacOS-dc 
ping localhost -n 2 > nul
echo Check out later for updates!
echo \*****************************************/
pause
cls
goto :start

:MamacBASIC
cls
echo Starting MamacBASIC Shell. . .
ping localhost -n 3 > nul
call system\MamacBASIC.bat
pause
cls
goto :start