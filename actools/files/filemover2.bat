@echo off
title File-Mover Advanced
:start
echo - Welcome to File Mover Advanced-
echo - type 1 for help in step 1 -
echo.
set /p dir= "1. Enter source directory path: "
if %dir%==1 (
start helpcentre.bat
cls
goto start 
)

set /p files= "2. Enter source file name: "
set /p target= "3. Enter target path: "
move %dir%\%files% %target%
echo Done!
pause
cls
goto start
