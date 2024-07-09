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
echo - pwd (prints currently working dir)
echo - github_repo (gives you the repository link)
echo - stbl-v-chk (checks the last stable version)
echo - user-counter (checks the users using MamacOS)
echo - macMAN (package manager)
echo - exit (exits the O.S)
echo -------------------------
set /p PROGRAM= What do you want to do?: 
if /i "%PROGRAM%"=="create" goto :create
if /i "%PROGRAM%"=="check" goto :check
if /i "%PROGRAM%"=="entry" goto :entry
if /i "%PROGRAM%"=="logs" goto :logs
if /i "%PROGRAM%"=="colors" goto :colors
if /i "%PROGRAM%"=="fullscreen" goto :fullscreen
if /i "%PROGRAM%"=="version_control" goto :version_control
if /i "%PROGRAM%"=="see" goto :see
if /i "%PROGRAM%"=="exit" goto :exit
if /i "%PROGRAM%"=="about" goto :about
if /i "%PROGRAM%"=="oldfetch" goto :oldfetch
if /i "%PROGRAM%"=="pwd" goto :pwd
if /i "%PROGRAM%"=="github_repo" goto :github_repo
if /i "%PROGRAM%"=="stbl-v-chk" goto :stbl-v-chk
if /i "%PROGRAM%"=="user-counter" goto :user-counter
if /i "%PROGRAM%"=="macMAN" goto :macMAN
if /i "%PROGRAM%"=="exit" goto :exit
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
cls
echo ********************
echo Entering the main file. . .
echo ********************
ping localhost -n 3 > nul
call Ders.bat

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

:: Yeni versiyonu eklemeyi unutma
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
echo v0.1.8 / 29.06.2024 \
ping localhost -n 2 > nul
echo v0.1.9 / 01.07.2024 \
ping localhost -n 2 > nul
echo v0.2.0 / 02.07.2024 \
ping localhost -n 2 > nul
echo v0.2.1 / 03.07.2024 \
ping localhost -n 2 > nul
echo v0.2.2 / 04.07.2024 \
ping localhost -n 2 > nul
echo v0.2.3 / 04.07.2024 \
ping localhost -n 2 > nul
echo v0.2.4 / 04.07.2024 \
ping localhost -n 2 > nul
echo v0.2.5 / 05.07.2024 \
ping localhost -n 2 > nul
echo v0.2.6 / 05.07.2024 \
ping localhost -n 2 > nul
echo v0.2.7 / 05.07.2024 \
ping localhost -n 2 > nul
echo v0.2.8 / 06.07.2024 \
ping localhost -n 2 > nul
echo v0.2.9 / 09.07.2024 \
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

:: Versiyonları değiştirmeyi unutma
:version_control
cls
echo *-------------------*
echo The version is v0.2.9
echo *-------------------*
pause > nul
cls
goto :start

:: Versiyonları değiştirmeyi unutma
:oldfetch
cls
echo     MM     MM          CCCC      //     OOOOOO     SSSSS     OS Name: MamacOS
ping localhost -n 2 > nul
echo    MM MM MM MM       CCCC       //    OOO    OOO  SS         Username: %USERNAME%
ping localhost -n 2 > nul
echo   MM   MM    MM      CCCC      //     OOO    OOO    SSSS     Creator: MamaCode Studios
ping localhost -n 2 > nul
echo  MM           MM     CCCC     //      OOO    OOO       SS    Current Version: v0.2.9
ping localhost -n 2 > nul
echo MM             MM      CCCC  //         OOOOOO     SSSSS     Current File: Menu.bat
pause > nul
cls
goto :start

:pwd
cls
echo Current directory:
cd 
pause > nul
cls 
goto :start

:github_repo
cls
echo *********************************
echo The github repositorys link:
ping localhost -n 3 > nul
echo.
echo https://github.com/gtaha23/MamacOS-Batch
echo.
echo *********************************
pause > nul
cls 
goto :start

:stbl-v-chk
cls
echo ********************************
echo The last stable version:
ping localhost -n 2 > nul
echo - v0.2.8
echo -x v0.2.9 (still testing)
ping localhost -n 2 > nul
echo ********************************
pause > nul
cls
goto :start

:exit
echo ******************
echo Exiting the OS. . .
echo ******************
ping localhost -n 3 > nul
exit 

:user-counter
cls
echo *****************************
echo Users online:
ping localhost -n 2 > nul
echo - 3
ping localhost -n 2 > nul
echo Online users version:
ping localhost -n 2 > nul
echo - 1 v0.2.9 (G. Taha)
echo - 1 v0.2.4 
echo - 1 v0.0.9 (Akay Tuna)
ping localhost -n 2 > nul
echo ****************************
pause
cls
goto :start

:macMAN
set macMANv=0.0.1 
cls
echo ************************** - macMAN - **************************
echo.
echo Write help to see how to use macMAN 
echo Sorry for the bugs :C
echo.
set /p INP= -= 
echo.
if "!INP!"=="help" (
    echo.
    echo macMAN is the packet manager for MamacOS 
    echo Current macMAN version is %macMANv%
    echo ------------
    echo Commands:
    echo - rmv (remove choice)
    echo - add (download the wanted file)
    echo - list (list the packages)
    echo - hst (shows the last action)
    echo - exit 
    echo.
    pause 
    cls
    goto :macMAN
)
if "!INP!"=="rmv" (
    echo Package not typed!
    
) else (
    if "!INP!"=="rmv system" (
        set /p SECENEK=are you sure? Y/N :
        if "!SECENEK!"=="Y" (
            del /f /q "MamacOS\system"
        ) else (
            echo Command stopped.
            goto :macMAN
        )
    )
    if "!INP!"=="rmv Ders.bat" (
        echo Cannot delete the O.S !
        pause
        cls
        goto :macMAN
    ) else (
        echo Sorry for limiting your choice :c
    )
)
if "!INP!"=="add" (
    echo package not intended!
) else (
    if "!INP!"=="add system" (
        echo Adding system to MamacOS. . .
        powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/gtaha23/MamacOS-Batch/blob/main/system/MamacBASIC.bat', 'MamacBASIC.bat')"
        powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/gtaha23/MamacOS-Batch/blob/main/system/command-chk.bat', 'command-chk.bat')"
        powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/gtaha23/MamacOS-Batch/blob/main/system/updater.bat', 'updater.bat')"
        ping localhost -n 3 > nul
        echo Process completed!
        pause
        cls
        goto :macMAN
    )
    if "!INP!"=="add extras" (
        echo Adding the extras. . .
        powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/gtaha23/MamacOS-Batch/blob/main/extras/funi_joke.txt', 'funi_joke.txt')"
        ping localhost -n 2 > nul
        echo Process completed!
        pause
        cls
        goto :macMAN
    ) else (
        echo Sorry for limiting your choice :c
    )
)
if "!INP!"=="list" (
    echo The files that can be downloaded are,
    echo.
    echo funi_joke.txt
    echo command-chk.bat
    ping localhost -n 2 > nul
    echo MamacBASIC.bat
    echo updater.bat
) else (
    echo Sorry for limiting your choice :c
)
if "!INP!"=="hst" (
    echo Last action:
    echo.
    echo %INP%
) else (
    echo Sorry for limiting your choice :c
)
if "!INP!"=="exit" (
    echo Exiting. . .
    ping localhost -n 2 > nul 
    cls
    goto :start
)
pause 
cls
goto :start