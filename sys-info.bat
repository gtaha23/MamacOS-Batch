@echo off
title MamacOS/Sys-info
color 1F

:main
echo Directory:
cd 
echo.
ping localhost -n 2 > nul
echo User:
echo %USERNAME%
echo. 
ping localhost -n 2 > nul
echo Version:
VER 
echo.
ping localhost -n 2 > nul
echo Current Directory:
DIR
echo.
ping localhost -n 2 > nul
echo Tree:
tree /F 
pause > nul

echo Do you want to return to the main file? (Y/N): 
set /p CHOICE= 
if /i "%CHOICE%"=="Y" call Ders.bat
if /i "%CHOICE%"=="N" goto :reserve

:reserve
echo Do you want to see sys-info? (y/n)
set /p YANIT=
if /i "%YANIT%"=="y" goto :main
if /i "%YANIT%"=="n" exit 