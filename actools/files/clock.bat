

<# : AlwaysOnTop2.bat -- http://stackoverflow.com/a/37912693/1683264
@echo off & setlocal
title Digital Clock - Always on Top feature
mode con:cols=20 lines=7

call :toggleAlwaysOnTop

rem /* ###############################
rem    @echo off
:main
cls
echo.
echo.
echo      %time:~0,8%   
echo.
echo      %date%   
echo.
ping -n 21.0.1 >NUL
goto main
rem    ############################### */

goto :EOF

:toggleAlwaysOnTop
powershell -noprofile "iex (${%~f0} | out-string)"
goto :EOF
rem // end batch / begin PowerShell hybrid code #>

add-type user32_dll @'
    [DllImport("user32.dll")]
    public static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter,
        int x, int y, int cx, int cy, uint uFlags);

    [DllImport("user32.dll")]
    public static extern int GetWindowLong(IntPtr hWnd, int nIndex);
'@ -namespace System

$id = $PID
do {
    $id = (gwmi win32_process -filter "ProcessID='$id'").ParentProcessID
    $hwnd = (ps -id $id).MainWindowHandle
} while (-not $hwnd)

$style = [user32_dll]::GetWindowLong($hwnd, -20)
# // If flag 0x08 is set, make parent HWND -2 to unset it.  Otherwise, HWND -1 to set it.
[IntPtr]$rootWin = ($style -band 0x08) / -8 - 1
[void][user32_dll]::SetWindowPos($hwnd, $rootWin, 0, 0, 0, 0, 0x03)
