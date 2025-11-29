@echo off
:: Ensure the script is run as Administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo [!] This script must be run as Administrator.
    echo     Right-click the .bat file and choose "Run as administrator".
    pause
    exit /b
)

:: Display menu
echo ================================
echo   Apply RAM Tweak for Windows
echo ================================
echo.
echo How much RAM does your PC have?
echo.
echo [A] 8 GB
echo [B] 16 GB
echo [C] 32 GB
echo [D] 48 GB
echo [E] 64 GB
echo [F] 128 GB
echo [Q] Quit
echo.

set /p choice="Select an option (1-6 or Q): "

if /i "%choice%"=="A" (
    set "value=00800000"
) else if /i "%choice%"=="B" (
    set "value=01000000"
) else if /i "%choice%"=="C" (
    set "value=02000000"
) else if /i "%choice%"=="D" (
    set "value=03000000"
) else if /i "%choice%"=="E" (
    set "value=04000000"
) else if /i "%choice%"=="F" (
    set "value=08000000"
) else if /i "%choice%"=="Q" (
    echo Exiting...
    exit /b
) else (
    echo Invalid selection.
    pause
    exit /b
)

echo.
echo Applying registry tweak...

reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 0x%value% /f

echo.
echo [✔] Registry tweak applied successfully!
pause
exit
