@echo off
:: Browser Privacy Tweaks 2025 - Final Clean Version
title Browser Privacy Tweaks 2025
mode 80,30
color 01
cls

:: Admin Check
net session >nul 2>&1 || (
    echo.
    echo   Please run as Administrator!
    echo.
    pause
    exit
)

:select
cls
echo.
echo       Browser Privacy Tweaks 2025
echo   ==================================================
echo.
echo   Which browser do you want to tweak?
echo.
echo     1. Google Chrome
echo     2. Opera GX
echo     3. Brave
echo     4. Firefox
echo     5. Apply ALL browsers at once
echo     6. Exit
echo.
set /p "sel=   Enter number (1-6): "

if "%sel%"=="1" call :chrome  & goto select
if "%sel%"=="2" call :opera   & goto select
if "%sel%"=="3" call :brave   & goto select
if "%sel%"=="4" call :firefox & goto select
if "%sel%"=="5" call :all     & goto select
if "%sel%"=="6" goto end
echo   Invalid choice! & timeout /t 2 >nul & goto select


:chrome
cls
echo   Applying Chrome privacy tweaks...
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v MetricsReportingEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DeviceMetricsReportingEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ChromeCleanupEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SearchSuggestEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v TranslateEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AutofillAddressEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v PasswordManagerEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SyncDisabled /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DnsOverHttpsMode /t REG_SZ /d "secure" /f >nul 2>&1
taskkill /f /im "google*update*" >nul 2>&1
sc config gupdate start= disabled >nul 2>&1
sc config gupdatem start= disabled >nul 2>&1
echo   Chrome - Done!
timeout /t 2 >nul
return


:opera
cls
echo   Applying Opera GX tweaks...
reg add "HKLM\SOFTWARE\Policies\Opera Software\Policy" /v HardwareAccelerationModeEnabled /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\Opera Software\Policy" /v BackgroundModeEnabled /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\Opera Software\Policy" /v AutoupdateCheckEnabled /t REG_DWORD /d 0 /f >nul
echo   Opera GX - Done!
timeout /t 2 >nul
return


:brave
cls
echo   Applying Brave tweaks...
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v BackgroundModeEnabled /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v HardwareAccelerationModeEnabled /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AutoupdateCheckEnabled /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v MetricsReportingEnabled /t REG_DWORD /d 0 /f >nul
echo   Brave - Done!
timeout /t 2 >nul
return


:firefox
cls
echo   Creating Firefox policies.json...
set "ff=C:\Program Files\Mozilla Firefox\distribution"
if not exist "%ff%" mkdir "%ff%"
(
echo {"policies":{"DisableTelemetry":true,"DisableFirefoxStudies":true,"DisablePocket":true,"DNSOverHTTPS":{"Enabled":false},"Preferences":{"network.trr.mode":{"Value":5}}}}
) > "%ff%\policies.json"
echo   Firefox - Done!
timeout /t 2 >nul
return


:all
call :chrome
call :opera
call :brave
call :firefox
cls
echo.
echo   All browsers tweaked successfully!
echo.
pause
return


:end
cls
echo.
echo   Thanks for using Browser Privacy Tweaks 2025
timeout /t 2 >nul
exit