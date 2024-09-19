:start
@echo off
title File-Mover
echo - Welcome to File-Mover -
echo - type 1 for help in source path -
echo.
set /p source= "Enter source path: "
if %source%==1 (
start helpcentre.bat
cls
goto start
)
set /p target= "Enter target path: "
move %source% %target%
echo Done!
pause
cls
goto start