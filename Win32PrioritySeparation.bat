@echo off
color 1
echo Please select a Win32PrioritySeparation setting:
echo.
echo Long, Fixed:
echo A. Win32PrioritySeparation=dword:0000001a
echo B. Win32PrioritySeparation=dword:00000018
echo C. Win32PrioritySeparation=dword:00000019
echo.
echo Long, Variable:
echo D. Win32PrioritySeparation=dword:00000014
echo E. Win32PrioritySeparation=dword:00000015
echo F. Win32PrioritySeparation=dword:00000016
echo.
echo Short, Fixed:
echo G. Win32PrioritySeparation=dword:0000002a
echo H. Win32PrioritySeparation=dword:00000028
echo I. Win32PrioritySeparation=dword:00000029
echo.
echo Short, Variable:
echo J. Win32PrioritySeparation=dword:00000024
echo K. Win32PrioritySeparation=dword:00000025
echo L. Win32PrioritySeparation=dword:00000026
echo.
echo Windows Default:
echo M. Win32PrioritySeparation=dword:00000002
echo.

set /p choice=Enter a letter (A-M) to select the priority setting: 
echo.

if /i "%choice%"=="A" (
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x0000001a /f
    echo Set Win32PrioritySeparation to 0x0000001a
    goto end
)
if /i "%choice%"=="B" (
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x00000018 /f
    echo Set Win32PrioritySeparation to 0x00000018
    goto end
)
if /i "%choice%"=="C" (
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x00000019 /f
    echo Set Win32PrioritySeparation to 0x00000019
    goto end
)
if /i "%choice%"=="D" (
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x00000014 /f
    echo Set Win32PrioritySeparation to 0x00000014
    goto end
)
if /i "%choice%"=="E" (
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x00000015 /f
    echo Set Win32PrioritySeparation to 0x00000015
    goto end
)
if /i "%choice%"=="F" (
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x00000016 /f
    echo Set Win32PrioritySeparation to 0x00000016
    goto end
)
if /i "%choice%"=="G" (
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x0000002a /f
    echo Set Win32PrioritySeparation to 0x0000002a
    goto end
)
if /i "%choice%"=="H" (
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x00000028 /f
    echo Set Win32PrioritySeparation to 0x00000028
    goto end
)
if /i "%choice%"=="I" (
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x00000029 /f
    echo Set Win32PrioritySeparation to 0x00000029
    goto end
)
if /i "%choice%"=="J" (
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x00000024 /f
    echo Set Win32PrioritySeparation to 0x00000024
    goto end
)
if /i "%choice%"=="K" (
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x00000025 /f
    echo Set Win32PrioritySeparation to 0x00000025
    goto end
)
if /i "%choice%"=="L" (
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x00000026 /f
    echo Set Win32PrioritySeparation to 0x00000026
    goto end
)
if /i "%choice%"=="M" (
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x00000002 /f
    echo Set Win32PrioritySeparation to 0x00000002
    goto end
)

echo Invalid choice. Please run the script again and select a letter from A to M.
:end
pause