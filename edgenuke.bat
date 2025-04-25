@echo off
title Edge Nuker
echo Edge Nuker by Henry Jones. The software is under the CC BY-SA license.
echo ============================================
echo Nuking Edge... Stand By.
echo ============================================
echo Important:
echo MAKE SURE to create a system restore point just in case before continuing!
echo I cannot guarantee that this service is 100% safe, because issues could occur if problems happened.
echo CONTINUE AT YOUR OWN RISK!
echo Press any key to start...
pause >nul

set EDGE_PATH1="C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
set EDGE_PATH2="C:\Program Files\Microsoft\Edge\Application\msedge.exe"
set SHORTCUT_GLOBAL="C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk"
set SHORTCUT_USER="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk"

call :RenameEdgeIfExists %EDGE_PATH1%
call :RenameEdgeIfExists %EDGE_PATH2%

echo Removing Start Menu shortcuts...
del /f /q "%SHORTCUT_GLOBAL%" 2>nul
del /f /q %SHORTCUT_USER% 2>nul

echo Disabling web search from Start Menu...
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f

echo Modifying registry to allow Edge removal...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge" /v NoRemove /t REG_DWORD /d 0 /f

echo Done. Microsoft Edge has been retired.
pause
exit /b

:RenameEdgeIfExists
if exist %1 (
    echo Found: %1
    echo Taking ownership...
    takeown /f %1
    icacls %1 /grant %username%:F
    echo Renaming to .bak...
    ren %1 msedge.bak
) else (
    echo Not found: %1
)
exit /b
