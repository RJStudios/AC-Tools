@echo off
:start
title Help Centre for Multi-Tool
echo -- Welcome to the Multi-Tool Help Centre! --
echo (1) AC-Tools help menu
echo (2) File-Mover 1 Help
echo (3) File-Mover Andvanced Help
echo (c) Exit Help Centre
set /p ans=">> "

if [%ans%]==[1] (
cls
goto actools
)

if [%ans%]==[2] (
cls
goto fmover1
)

if [%ans%]==[3] (
cls
goto fmover2
)

if [%ans%]==[c] (exit) 



:actools
cls
title AC-Tools Help
echo If an option has a star, it means it has a surtain feature.
echo To know about the feature, type * and then the number (as in ">> *3")
echo ---------------------------------------------------------------------
echo Commands:
echo kill, /kill, /kill @s --- Exit Multi-Tool

echo.
echo (press Enter) Go back to Help Centre
echo (c) Exit

set /p ans=">> "
if %ans%==c (
exit
) else (
cls
goto start
)

:fmover1
cls
title File-Mover Help
echo - Help ^& Tips for File-Mover -
echo.
echo --Help--
echo 1. Type Path to source with extension (the .txt at the end or example)
echo 2. Type Path to target (destination)

echo.
echo --Tips--
echo 1) To move a folder, just type the folder path, without the file
echo 2) To move all files from a directory, 
echo type the dir path followed by a *.* (example: D:\test\*.*)
echo 3) To rename the file after moving, type in "target path" something like this: "D:\destination\renamed.txt"

echo.
echo (press Enter) Go back to Help Centre
echo (c) Exit

set /p ans=">> "
if %ans%==c (
exit
) else (
cls
goto start
)

:fmover2
cls
title File-Mover Advanced Help
echo - Help ^& Tips for File-Mover Advanced -
echo.
echo --Help--
echo 1. Type the folder Path
echo 2. Type the file name (not path) with extension (the .png or .txt)
echo 3. Type the target (destination) path. It has to be a folder, a drive letter or a combination

echo.
echo --Tips--
echo 1) If you want to move a folder, leave step 1 blank and put folder path in step 2
echo 2) If you want to move all files, leave step 1 blank, 
echo then in step 2, put the dir path followed by a *.* (example: D:\test\*.*)
echo 3) To rename the file after moving, type in "target path" something like this: "D:\destination\renamed.txt"


echo.
echo (press Enter) Go back to Help Centre
echo (c) Exit

set /p ans=">> "
if %ans%==c (
exit
) else (
cls
goto start
)