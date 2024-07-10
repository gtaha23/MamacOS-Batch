@echo off
title MamacOS-menu
color 1F
setlocal EnableDelayedExpansion
cls

goto :macMAN

:macMAN
set macMANv=0.0.2 
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
    echo - rmv (removes choice)
    echo - add (download the wanted file)
    echo - list (list the packages)
    echo - hst (shows the last action)
    echo - exit 
    echo.
    pause 
    cls
    goto :macMAN
)
else if "!INP!"=="rmv" (
    echo Package not typed!
    
) 
else if "!INP!"=="rmv system" (
    set /p SECENEK=are you sure? Y/N :
    if "!SECENEK!"=="Y" (
        del /f /q "MamacOS\system"
    ) else (
        echo Command stopped.
        goto :macMAN
    )
)
else if "!INP!"=="rmv Ders.bat" (
        echo Cannot delete the O.S !
        pause
        cls
        goto :macMAN
) 
else if NOT "!INP!"=="rmv" & "!INP!"=="rmv system" & "!INP!"=="rmv Ders.bat"  (
    echo Sorry for limiting your choice :c
)

else if "!INP!"=="add" (
    echo package not intended!
) else (
    if "!INP!"=="add system" (
        echo Adding system to MamacOS. . .
        powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/gtaha23/MamacOS-Batch/blob/main/system/MamacBASIC.bat', 'MamacBASIC.bat')"
        powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/gtaha23/MamacOS-Batch/blob/main/system/command-chk.bat', 'command-chk.bat')"
        powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/gtaha23/MamacOS-Batch/blob/main/system/updater.bat', 'updater.bat')"
        ping localhost -n 3 > nul
        echo Process completed!
        pause
        cls
        goto :macMAN
    )
    else if "!INP!"=="add extras" (
        echo Adding the extras. . .
        powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/gtaha23/MamacOS-Batch/blob/main/extras/funi_joke.txt', 'funi_joke.txt')"
        ping localhost -n 2 > nul
        echo Process completed!
        pause
        cls
        goto :macMAN
    ) 
else if NOT "!INP!"=="rmv" & "!INP!"=="rmv system" & "!INP!"=="rmv Ders.bat"  (
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
else if "!INP!"=="hst" (
    echo Last action:
    echo.
    echo %INP%
) else (
    echo Sorry for limiting your choice :c
)
else if "!INP!"=="exit" (
    echo Exiting. . .
    ping localhost -n 2 > nul 
    cls
    goto :start
)
pause 
cls
goto :start