@echo off

echo Injecting VenusMods into your Discord install...

rem Copy Injector
copy /y dist/injector/core rem TODO PATHHERE
copy /y dist/injector/index.js rem TODO PATHHERE
if %ERRORLEVEL% EQU 0 (echo Successfully moved the injector) else (
    echo Failed to move the injector.
    exit 1
)

rem Copy Base 
copy /y dist/base rem TODO PATHHERE
if %ERRORLEVEL% EQU 0 (echo Successfully moved the base) else (
    echo Failed to move the base.
    exit 1
)

echo Successfully injected VenusMods!
exit 0
