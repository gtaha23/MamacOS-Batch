@echo off
title MamacOS-system/updater
color 1F

:log
echo Connecting to the Networks. . .
ping localhost -n 3 > nul
echo Downloading the last version,
echo Downloading the menu. . .
goto :Download

:: Change the download location for the command to work!
:Download
echo downloading. . .
ping localhost -n 2 > nul
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/gtaha23/MamacOS-Batch/blob/main/Ders.bat', 'Ders.bat')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/gtaha23/MamacOS-Batch/blob/main/Menu.bat', 'Menu.bat')"
echo moving the files. . .
ping localhost -n 3 > nul
move "C:\Users\*username*\*Saved Place*\MamacOS\system\Ders.bat" - "C:\Users\*username*\*Saved Place*\MamacOS"
move "C:\Users\*username*\*Saved Place*\MamacOS\system\Menu.bat" - "C:\Users\*username*\*Saved Place*\MamacOS"
echo if the old one is still appearing, Download manually from https://github.com/gtaha23/MamacOS-Batch/blob/main/Ders.bat .
pause 
cls
call Ders.bat
