@echo off
:: Gaming QoS + Priority Tweaks - Menu Version
:: Choose: Valorant, Fortnite or Both
:: Made by request - December 2025

:: Set console color to dark blue text on black background
color 01
cls

echo.
echo  ================================================
echo          Gaming QoS + Priority Tweaks          
echo          Valorant ^| Fortnite ^| Both             
echo  ================================================
echo.
echo  [1] Valorant only
echo  [2] Fortnite only  
echo  [3] Both (Valorant + Fortnite)
echo  [4] Exit
echo.
set /p choice=Select option (1-4): 

if "%choice%"=="1" goto VALORANT
if "%choice%"=="2" goto FORTNITE
if "%choice%"=="3" goto BOTH
if "%choice%"=="4" goto EXIT
echo.
echo Invalid option! Please run again and choose 1, 2, 3 or 4.
pause
exit

:VALORANT
echo.
echo Applying QoS policy for Valorant...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\VALORANT" /v "Version" /t REG_SZ /d "1.0" /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\VALORANT" /v "Application Name" /t REG_SZ /d "valorant.exe" /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\VALORANT" /v "Protocol" /t REG_SZ /d "*" /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\VALORANT" /v "Local Port" /t REG_SZ /d "*" /f >nul
reg add "HKLM\SOFTWARE\Policies\Policies\Microsoft\Windows\QoS\VALORANT" /v "Local IP" /t REG_SZ /d "*" /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\VALORANT" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\VALORANT" /v "Remote Port" /t REG_SZ /d "*" /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\VALORANT" /v "Remote IP" /t REG_SZ /d "*" /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\VALORANT" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\VALORANT" /v "DSCP Value" /t REG_SZ /d "46" /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\VALORANT" /v "Throttle Rate" /t REG_SZ /d "-1" /f >nul

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\VALORANT" /v "Application Name" /t REG_SZ /d "VALORANT-Win64-Shipping.exe" /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\VALORANT" /v "DSCP Value" /t REG_SZ /d "46" /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\VALORANT" /v "Throttle Rate" /t REG_SZ /d "-1" /f >nul
echo Valorant QoS policy applied (DSCP 46 - EF)
goto SUCCESS

:FORTNITE
echo.
echo Applying high CPU priority for Fortnite...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f >nul
echo Fortnite high CPU priority applied (High priority class)
goto SUCCESS

:BOTH
echo.
echo Applying tweaks for Valorant + Fortnite...
call :VALORANT
call :FORTNITE
goto SUCCESS

:SUCCESS
echo.
echo ================================================
echo   All selected tweaks have been applied successfully!
echo ================================================
echo.
echo A restart or logoff/logon is recommended for QoS changes to take full effect.
echo.
pause
goto EXIT

:EXIT
exit