@echo off

echo Injecting VenusMods into your Discord install...

rem Copy Injector
xcopy /iyq "dist\injector\venus_mods" "%APPDATA%\discord\0.0.306\modules\discord_desktop_core\venus_mods"
copy /y "dist\injector\index.js" "%APPDATA%\discord\0.0.306\modules\discord_desktop_core\index.js"
if %ERRORLEVEL% EQU 0 (echo Successfully moved the injector) else (
    echo Failed to move the injector.
    exit 1
)

rem Copy Base 
rem copy /y dist\base rem TODO PATHHERE
rem if %ERRORLEVEL% EQU 0 (echo Successfully moved the base) else (
rem     echo Failed to move the base.
rem     exit 1
rem )

echo Successfully injected VenusMods!
