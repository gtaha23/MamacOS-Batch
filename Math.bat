@echo off
title Math functions
color 0a

echo Welcome to MamacOs-maths
echo make a equation of five to enter the main file

:start
set /p %MATH%=Equation?
set /a RESULT= %MATH%
echo %RESULT%
if %RESULT%==5 goto :entry 
pause 

:function1
setlocal
echo %random% a random number
echo this is very basic soo check the main file!
endlocal
pause > nul
 
:entry
setlocal
echo Entering the main file . . .
ping localhost -n 3 > nul
start Ders.bat
endlocal

cls

goto :start
goto :function1

pause > nul
goto :start