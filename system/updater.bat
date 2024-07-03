@echo off
title MamacOS-system/updater
color 1F

:log
echo Connecting to the Networks. . .
ping localhost -n 3 > nul
echo Downloading the last version
goto :Download

:Download
echo downloading. . .
ping localhost -n 2 > nul
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/gtaha23/MamacOS-Batch/blob/main/Ders.bat', 'Ders.bat')"
echo moving the main file. . .
ping localhost -n 3 > nul
move "C:\Users\Gta23\OneDrive\Masaüstü\MamacOS\system\Ders.bat" - "C:\Users\Gta23\OneDrive\Masaüstü\MamacOS"
echo if the old one is still appearing, Download manually from https://github.com/gtaha23/MamacOS-Batch/blob/main/Ders.bat .
pause 
call Ders.bat