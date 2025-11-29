@echo off
:: Windows mods
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 0x00000026 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d 0x00000001 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "LazyMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "LazyModeTimeout" /t REG_DWORD /d "25000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "AlwaysOn" /t REG_DWORD /d "1" /f

:: Kernel tweaks
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MaxDynamicTickDuration" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MaximumSharedReadyQueueSize" /t REG_DWORD /d "128" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "BufferSize" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IoQueueWorkItem" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IoQueueWorkItemToNode" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IoQueueWorkItemEx" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IoQueueThreadIrp" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ExTryQueueWorkItem" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ExQueueWorkItem" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IoEnqueueIrp" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "XMMIZeroingEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "UseNormalStack" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "UseNewEaBuffering" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "StackSubSystemStackSize" /t REG_DWORD /d "65536" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcWatchdogProfileOffset /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcTimeout /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v IdealDpcRate /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MaximumDpcQueueDepth /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MinimumDpcRate /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcWatchdogPeriod /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ThreadDpcEnable /t REG_DWORD /d 0 /f

:: DirectX Tweaks
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "D3D12_ENABLE_UNSAFE_COMMAND_BUFFER_REUSE" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "D3D12_ENABLE_RUNTIME_DRIVER_OPTIMIZATIONS" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "D3D12_RESOURCE_ALIGNMENT" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "D3D11_MULTITHREADED" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "D3D12_MULTITHREADED" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "D3D11_DEFERRED_CONTEXTS" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "D3D12_DEFERRED_CONTEXTS" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "D3D11_ALLOW_TILING" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "D3D11_ENABLE_DYNAMIC_CODEGEN" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "D3D12_ALLOW_TILING" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "D3D12_CPU_PAGE_TABLE_ENABLED" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "D3D12_HEAP_SERIALIZATION_ENABLED" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "D3D12_MAP_HEAP_ALLOCATIONS" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "D3D12_RESIDENCY_MANAGEMENT_ENABLED" /t REG_DWORD /d "1" /f

:: DWM Tweaks
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v SuperWetEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v SDRBoostPercentOverride /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ResampleInLinearSpace /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v OneCoreNoDWMRawGameController /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v MPCInputRouterWaitForDebugger /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v InteractionOutputPredictionDisabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v InkGPUAccelOverrideVendorWhitelist /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableRenderPathTestMode /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v FlattenVirtualSurfaceEffectInput /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableCpuClipping /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisallowNonDrawListRendering /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableProjectedShadowsRendering /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableProjectedShadows /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableLockingMemory /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableHologramCompositor /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableDeviceBitmaps /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DebugFailFast /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DDisplayTestMode /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableLockingMemory /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v UseHWDrawListEntriesOnWARP /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ResampleModeOverride /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v RenderThreadWatchdogTimeoutMilliseconds /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ParallelModePolicy /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableResizeOptimization /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableMegaRects /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableFrontBufferRenderChecks /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableEffectCaching /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableDesktopOverlays /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnablePrimitiveReordering /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v MaxD3DFeatureLevel /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v OverlayQualifyCount /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v OverlayDisqualifyCount /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ResizeTimeoutModern /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ResizeTimeoutGdi /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableResizeOptimization /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableEffectCaching /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v HighColor /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableDeviceBitmaps /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableCpuClipping /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableDrawListCaching /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v AnimationsShiftKey /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v AnimationAttributionEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableCommonSuperSets /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableAdvancedDirectFlip /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v FrameLatency /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ForceDirectDrawSync /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v MaxQueuedPresentBuffers /t REG_DWORD /d 1 /f

:: Mitigations
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d "%mitigation_mask%" /f > nul 2>&1
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationAuditOptions" /t REG_BINARY /d "%mitigation_mask%" /f > nul 2>&1

:: Nvme Tweaks
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "QueueDepth" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "NvmeMaxReadSplit" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "NvmeMaxWriteSplit" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "ForceFlush" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "ImmediateData" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "MaxSegmentsPerCommand" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "MaxOutstandingCmds" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "ForceEagerWrites" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "MaxQueuedCommands" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "MaxOutstandingIORequests" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "NumberOfRequests" /t REG_DWORD /d "1500" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "IoSubmissionQueueCount" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "IoQueueDepth" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "HostMemoryBufferBytes" /t REG_DWORD /d "1500" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "ArbitrationBurst" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\StorNVMe\Parameters\Device" /v "QueueDepth" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\StorNVMe\Parameters\Device" /v "NvmeMaxReadSplit" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\StorNVMe\Parameters\Device" /v "NvmeMaxWriteSplit" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\StorNVMe\Parameters\Device" /v "ForceFlush" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\StorNVMe\Parameters\Device" /v "ImmediateData" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\StorNVMe\Parameters\Device" /v "MaxSegmentsPerCommand" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\StorNVMe\Parameters\Device" /v "MaxOutstandingCmds" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\StorNVMe\Parameters\Device" /v "ForceEagerWrites" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\StorNVMe\Parameters\Device" /v "MaxQueuedCommands" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\StorNVMe\Parameters\Device" /v "MaxOutstandingIORequests" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\StorNVMe\Parameters\Device" /v "NumberOfRequests" /t REG_DWORD /d "1500" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\StorNVMe\Parameters\Device" /v "IoSubmissionQueueCount" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\StorNVMe\Parameters\Device" /v "IoQueueDepth" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\StorNVMe\Parameters\Device" /v "HostMemoryBufferBytes" /t REG_DWORD /d "1500" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\StorNVMe\Parameters\Device" /v "ArbitrationBurst" /t REG_DWORD /d "256" /f

:: Nvme Throttling
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Classpnp" /v "NVMeDisablePerfThrottling" /t REG_DWORD /d "1" /f

:: Disable PowerThrottling
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f

:: Mouse Tweaks
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "20" /f

:: Keyboard Tweaks
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "20" /f
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_DWORD /d "20" /f

:: For gamers
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f

:: USB Powersaves
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\2a737441-1930-4402-8d77-b2bebba308a3" /v "Attributes" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\USB\Device Parameters" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" /v "AllowIdleIrpInD3" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" /v "EnableSelectiveSuspend" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" /v "DeviceSelectiveSuspended" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" /v "SelectiveSuspendEnabled" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" /v "SelectiveSuspendOn" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" /v "EnumerationRetryCount" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" /v "ExtPropDescSemaphore" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" /v "WaitWakeEnabled" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" /v "D3ColdSupported" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" /v "WdfDirectedPowerTransitionEnable" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" /v "EnableIdlePowerManagement" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" /v "IdleInWorkingState" /t REG_DWORD /d "0" /f

:: Windows games tweaks for better gaming performance
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f

:: Enable hardware-accelerated GPU scheduling
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d "2" /f

:: Set video settings for battery performance
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\VideoSettings" /v "VideoQualityOnBattery" /t REG_DWORD /d "1" /f

:: Set Windows visual effects for performance
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f

:: Disable minimizing/maximizing animations
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f

:: Disable taskbar animations
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f

:: Disable Aero Peek
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "0" /f

:: Disable DWM thumbnail hibernation
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "AlwaysHibernateThumbnails" /t REG_DWORD /d "0" /f

:: Enable both icons and labels on taskbar buttons
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "IconsOnly" /t REG_DWORD /d "0" /f

:: Disable shadows on list view items
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "0" /f

:: Set priority separation for better performance in foreground apps
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "26" /f

:: Disable remote assistance
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "fAllowToGetHelp" /t REG_DWORD /d "0" /f

:: Disable Most Frequently Used tracking on Start screen
reg add "HKCU\Software\Policies\Microsoft\Windows\EdgeUI" /v "DisableMFUTracking" /t REG_DWORD /d "1" /f

:: Disable accessibility sounds
reg add "HKCU\Control Panel\Accessibility" /v "Sound on Activation" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility" /v "Warning Sounds" /t REG_DWORD /d "0" /f

:: Disable NVIDIA tray from startup
reg add "HKCU\Software\NVIDIA Corporation\NvTray" /v "StartOnLogin" /t REG_DWORD /d "0" /f

:: Disable automatic system maintenance
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f

:: Disable background apps for better performance
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f

:: Configure Alt-Tab multitasking behavior
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "MultiTaskingAltTabFilter" /t REG_DWORD /d "3" /f

:: Display Tweaks
:: reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /t REG_DWORD /d "5" /f
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "GamePanelStartupTipIndex" /t REG_DWORD /d "3" /f
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d "2" /f
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d "0" /f

:: Latency Tolerance
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Latency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f

echo Disabling services via registry edits...
:: Disable Device Association Service
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationService" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Diagnostic Policy Service
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Diagnostic Service Host
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DiagSvc" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Windows Diagnostic Infrastructure Service Host
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Windows Diagnostic System Host
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "4" /f
:: Disable IKE and AuthIP IPsec Keying Modules
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ikeext" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Intel Integrated Clock Controller Service
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iclsClient" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Intel Content Protection HECI Service
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cphs" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Intel Management Engine Interface
reg add "HKLM\SYSTEM\CurrentControlSet\Services\heci" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Energy Server Service
reg add "HKLM\SYSTEM\CurrentControlSet\Services\esifsvc" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Intel Management Engine Interface x64
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MEIx64" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Intel Trusted Execution Engine Interface
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TeeDriverW8x64" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Trusted Execution Environment
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrustedExecutionEnvironment" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Windows Diagnostic Hub Standard Collector Service
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Windows Update Medic Service
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Nahimic Service
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NahimicService" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Net.Tcp Port Sharing Service
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Plug and Play
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PlugPlay" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Print Spooler
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Program Compatibility Assistant Service
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Remote Registry
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RemoteRegistry" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Remote Access Connection Manager
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RemoteAccess" /v "Start" /t REG_DWORD /d "4" /f
:: Disable TCP/IP NetBIOS Helper
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lmhosts" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Windows Push Notifications System Service
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WpnService" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Windows Biometric Service
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Windows Search
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "4" /f
:: Disable Workstation Service
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "4" /f
:: Disable IP Helper
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iphlpsvc" /v "Start" /t REG_DWORD /d "4" /f
echo Services disabled successfully.

:: Disable Dynamic Pstate
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDynamicPstate" /t REG_DWORD /d 1 /f

:: Enable MSI Mode for GPU
echo Enabling MSI Mode
for /f %%g in ('wmic path win32_videocontroller get PNPDeviceID ^| findstr /L "VEN_"') do (
    reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f
    reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /t REG_DWORD /d "0" /f
)

:: NVIDIA Latency Tolerance
echo Setting NVIDIA Latency Tolerance
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "D3PCLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "F1TransitionLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "LOWLATENCY" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Node3DLowLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PciLatencyTimerControl" /t REG_DWORD /d "20" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMDeepL1EntryLatencyUsec" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMaxFtuS" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMinFtuS" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcPerioduS" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrEiIdleThresholdUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrIdleThresholdUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrRgIdleThresholdUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrMsIdleThresholdUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipDPCDelayUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipTimingMarginUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectJITFlipMsHybridFlipDelayUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrCursorMarginUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMarginUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMaxUs" /t REG_DWORD /d "1" /f

:: Force Contiguous Memory Allocation
echo Forcing Contiguous Memory Allocation
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "1" /f

:: Disable HDCP
echo Disabling High-bandwidth Digital Content Protection
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMHdcpKeyGlobZero" /t REG_DWORD /d "1" /f

:: Disable TCC
echo Disabling TCC
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TCCSupported" /t REG_DWORD /d "0" /f

:: Disable Tiled Display
echo Disabling Tiled Display
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableTiledDisplay" /t REG_DWORD /d "0" /f

:: Disable NVIDIA Telemetry
echo Disabling NVIDIA Telemetry
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "NvBackend" /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /t REG_DWORD /d "0" /f
schtasks /change /disable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /disable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /disable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /disable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /disable /tn "NvDriverUpdateCheckDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /disable /tn "NVIDIA GeForce Experience SelfUpdate_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /disable /tn "NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"

:: Disable NVIDIA Display Power Saving
echo Disabling NVIDIA Display Power Saving
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t REG_DWORD /d "0" /f

:: Video Redraw Acceleration
echo Setting Driver Acceleration
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Acceleration.Level" /t REG_DWORD /d "0" /f

:: Disable NVIDIA 3D Vision Shortcuts
echo Disabling NVIDIA Shortcuts
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DesktopStereoShortcuts" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "FeatureControl" /t REG_DWORD /d "4" /f

:: Disable Filter
echo Disabling Filter
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "NVDeviceSupportKFilter" /t REG_DWORD /d "0" /f

:: Increased Dedicated Video Memory
echo Increasing Dedicated Video Memory
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmCacheLoc" /t REG_DWORD /d "0" /f

:: Set NVIDIA Driver Package Install Directory
echo Setting Driver Package Install Directory
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmDisableInst2Sys" /t REG_DWORD /d "0" /f

:: Change PCounter Permissions
echo Changing Performance Counter Permissions
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmProfilingAdminOnly" /t REG_DWORD /d "0" /f

:: Disable DX Event Tracking
echo Disabling DirectX Event Tracking
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TrackResetEngine" /t REG_DWORD /d "0" /f

:: Disable Verifications in Block Transfer Operations
echo Disabling Verifications Block Transfer Operations
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ValidateBlitSubRects" /t REG_DWORD /d "0" /f

:: Software protection fix
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /v "InactivityShutdownDelay" /t REG_DWORD /d "4294967295" /f

:: Optimize file system
fsutil behavior set disable8dot3 1
fsutil behavior set disablelastaccess 1

:: Timer resolution
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d "1" /f

:: Disable event trace
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger" /f

:: Rename smart screen
taskkill /f /im smartscreen.exe > nul 2>&1 & ren C:\Windows\System32\smartscreen.exe smartscreen.exee

:: Rename microcode
ren C:\Windows\System32\mcupdate_GenuineIntel.dll mcupdate_GenuineIntel.dlll
ren C:\Windows\System32\mcupdate_AuthenticAMD.dll mcupdate_AuthenticAMD.dlll

:: Intel
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Config" /v "VulnerableDriverBlocklistEnable" /t REG_DWORD /d "0" /f

:: SSD Tweak
:: Set SysMain service to Disabled
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f


::Internet
:: Set log file path and create directory
set "LogFile=C:\Logs\APB_Log.txt"
mkdir "C:\Logs" 2>nul
echo Network Optimization Log - %date% %time% > "%LogFile%"

:: Reset Internet
echo Resetting Internet configurations... >> "%LogFile%"
ipconfig /release >nul 2>&1
ipconfig /renew >nul 2>&1
ipconfig /flushdns >nul 2>&1
netsh int ip reset >nul 2>&1
netsh int ipv4 reset >nul 2>&1
netsh int ipv6 reset >nul 2>&1
netsh int tcp reset >nul 2>&1
netsh winsock reset >nul 2>&1
netsh advfirewall reset >nul 2>&1
netsh branchcache reset >nul 2>&1
netsh http flush logbuffer >nul 2>&1
echo Internet configurations reset. >> "%LogFile%"

:: Disable Network Throttling
echo Disabling Network Throttling... >> "%LogFile%"
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f >> "%LogFile%"

:: Set Network Autotuning to Normal
echo Setting Network AutoTuning to Normal... >> "%LogFile%"
netsh int tcp set global autotuninglevel=normal >> "%LogFile%"

:: Disable ECN
echo Disabling Explicit Congestion Notification... >> "%LogFile%"
netsh int tcp set global ecncapability=disabled >> "%LogFile%"

:: Enable DCA (if supported)
echo Enabling Direct Cache Access... >> "%LogFile%"
netsh int tcp set global dca=enabled >> "%LogFile%"

:: Enable NetDMA (if supported)
echo Enabling Network Direct Memory Access... >> "%LogFile%"
netsh int tcp set global netdma=enabled >> "%LogFile%"

:: Disable RSC
echo Disabling Receive Side Coalescing... >> "%LogFile%"
netsh int tcp set global rsc=disabled >> "%LogFile%"

:: Enable RSS
echo Enabling Receive Side Scaling... >> "%LogFile%"
netsh int tcp set global rss=enabled >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Ndis\Parameters" /v "RssBaseCpu" /t REG_DWORD /d "1" /f >> "%LogFile%"

:: Disable TCP Timestamps
echo Disabling TCP Timestamps... >> "%LogFile%"
netsh int tcp set global timestamps=disabled >> "%LogFile%"

:: Set Initial RTO to 2000ms
echo Setting Initial Retransmission Timer to 2000ms... >> "%LogFile%"
netsh int tcp set global initialRto=2000 >> "%LogFile%"

:: Set MTU Size to 1500 for all IPv4 interfaces
echo Setting MTU Size to 1500... >> "%LogFile%"
for /f "tokens=1" %%i in ('netsh interface ipv4 show interfaces ^| findstr /r "^ *[0-9]"') do (
    netsh interface ipv4 set subinterface %%i mtu=1500 store=persistent >> "%LogFile%"
)

:: Disable NonSackRTTresiliency
echo Disabling Non Sack RTT Resiliency... >> "%LogFile%"
netsh int tcp set global nonsackrttresiliency=disabled >> "%LogFile%"

:: Set Max Syn Retransmissions to 2
echo Setting Max Syn Retransmissions to 2... >> "%LogFile%"
netsh int tcp set global maxsynretransmissions=2 >> "%LogFile%"

:: Disable MPP
echo Disabling Memory Pressure Protection... >> "%LogFile%"
netsh int tcp set security mpp=disabled >> "%LogFile%"

:: Disable Security Profiles
echo Disabling Security Profiles... >> "%LogFile%"
netsh int tcp set security profiles=disabled >> "%LogFile%"

:: Disable Heuristics
echo Disabling Windows Scaling Heuristics... >> "%LogFile%"
netsh int tcp set heuristics disabled >> "%LogFile%"

:: Increase ARP Cache Size to 4096
echo Increasing ARP Cache Size to 4096... >> "%LogFile%"
netsh int ip set global neighborcachelimit=4096 >> "%LogFile%"

:: Disable Task Offloading
echo Disabling Task Offloading... >> "%LogFile%"
netsh int ip set global taskoffload=disabled >> "%LogFile%"

:: Prioritize IPv4 over IPv6
echo Prioritizing IPv4 over IPv6... >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisabledComponents" /t REG_DWORD /d "32" /f >> "%LogFile%"

:: Set TTL to 64
echo Configuring Time to Live to 64... >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f >> "%LogFile%"

:: Enable TCP Window Scaling
echo Enabling TCP Window Scaling... >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "1" /f >> "%LogFile%"

:: Set TcpMaxDupAcks to 2
echo Setting TcpMaxDupAcks to 2... >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f >> "%LogFile%"

:: Enable SACK
echo Enabling TCP Selective ACKs... >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "1" /f >> "%LogFile%"

:: Increase Maximum Port Number
echo Increasing Maximum Port Number to 65534... >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f >> "%LogFile%"

:: Decrease TIME_WAIT Delay
echo Decreasing Timed Wait Delay to 30... >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "30" /f >> "%LogFile%"

:: Set Network Priorities
echo Setting Network Priorities... >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f >> "%LogFile%"

:: Adjust Sock Address Size
echo Configuring Sock Address Size... >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MinSockAddrLength" /t REG_DWORD /d "16" /f >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MaxSockAddrLength" /t REG_DWORD /d "16" /f >> "%LogFile%"

:: Disable Nagle's Algorithm
echo Disabling Nagle's Algorithm... >> "%LogFile%"
for /f "tokens=3" %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /f "DhcpIPAddress" /s ^| findstr /i "HKEY"') do (
    reg add "%%i" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f >> "%LogFile%"
    reg add "%%i" /v "TCPNoDelay" /t REG_DWORD /d "1" /f >> "%LogFile%"
    reg add "%%i" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f >> "%LogFile%"
)

:: Disable Delivery Optimization
echo Disabling Delivery Optimization... >> "%LogFile%"
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d "0" /f >> "%LogFile%"
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DownloadMode" /t REG_DWORD /d "0" /f >> "%LogFile%"
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings" /v "DownloadMode" /t REG_DWORD /d "0" /f >> "%LogFile%"

:: Disable Auto Disconnect for Idle Connections
echo Disabling Auto Disconnect... >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "autodisconnect" /t REG_DWORD /d "4294967295" /f >> "%LogFile%"

:: Limit Number of SMB Sessions
echo Limiting SMB Sessions... >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "Size" /t REG_DWORD /d "3" /f >> "%LogFile%"

:: Disable Oplocks
echo Disabling Oplocks... >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "EnableOplocks" /t REG_DWORD /d "0" /f >> "%LogFile%"

:: Set IRP Stack Size
echo Setting IRP Stack Size... >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "20" /f >> "%LogFile%"

:: Disable Sharing Violations
echo Disabling Sharing Violations... >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "SharingViolationDelay" /t REG_DWORD /d "0" /f >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "SharingViolationRetries" /t REG_DWORD /d "0" /f >> "%LogFile%"

:: Configure Network Adapters
echo Configuring Network Adapters... >> "%LogFile%"
for /f "tokens=*" %%n in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /s /f "*SpeedDuplex" ^| findstr /b "HKEY"') do (
    :: Disable NIC Power Savings
    echo Disabling NIC Power Savings for %%n... >> "%LogFile%"
    reg add "%%n" /v "AutoPowerSaveModeEnabled" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "AutoDisableGigabit" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "AdvancedEEE" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "DisableDelayedPowerUp" /t REG_SZ /d "2" /f >> "%LogFile%"
    reg add "%%n" /v "*EEE" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "EEE" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "EnablePME" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "EEELinkAdvertisement" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "EnableGreenEthernet" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "EnableSavePowerNow" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "EnablePowerManagement" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "EnableDynamicPowerGating" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "EnableConnectedPowerGating" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "EnableWakeOnLan" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "GigaLite" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "NicAutoPowerSaver" /t REG_SZ /d "2" /f >> "%LogFile%"
    reg add "%%n" /v "PowerDownPll" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "PowerSavingMode" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "ReduceSpeedOnPowerDown" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "SmartPowerDownEnable" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "S5NicKeepOverrideMacAddrV2" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "S5WakeOnLan" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "ULPMode" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "WakeOnDisconnect" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "*WakeOnMagicPacket" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "*WakeOnPattern" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "WakeOnLink" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "WolShutdownLinkSpeed" /t REG_SZ /d "2" /f >> "%LogFile%"

    :: Disable Jumbo Frame
    echo Disabling Jumbo Frame for %%n... >> "%LogFile%"
    reg add "%%n" /v "JumboPacket" /t REG_SZ /d "1514" /f >> "%LogFile%"

    :: Configure Receive/Transmit Buffers
    echo Configuring Buffer Sizes for %%n... >> "%LogFile%"
    reg add "%%n" /v "TransmitBuffers" /t REG_SZ /d "2048" /f >> "%LogFile%"
    reg add "%%n" /v "ReceiveBuffers" /t REG_SZ /d "512" /f >> "%LogFile%"

    :: Configure Offloads
    echo Configuring Offloads for %%n... >> "%LogFile%"
    reg add "%%n" /v "IPChecksumOffloadIPv4" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "LsoV1IPv4" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "LsoV2IPv4" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "LsoV2IPv6" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "PMARPOffload" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "PMNSOffload" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "TCPChecksumOffloadIPv4" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "TCPChecksumOffloadIPv6" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "UDPChecksumOffloadIPv6" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "UDPChecksumOffloadIPv4" /t REG_SZ /d "0" /f >> "%LogFile%"

    :: Enable RSS in NIC
    echo Enabling RSS in NIC for %%n... >> "%LogFile%"
    reg add "%%n" /v "RSS" /t REG_SZ /d "1" /f >> "%LogFile%"
    reg add "%%n" /v "*NumRssQueues" /t REG_SZ /d "2" /f >> "%LogFile%"
    reg add "%%n" /v "RSSProfile" /t REG_SZ /d "3" /f >> "%LogFile%"

    :: Disable Flow Control
    echo Disabling Flow Control for %%n... >> "%LogFile%"
    reg add "%%n" /v "*FlowControl" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "FlowControlCap" /t REG_SZ /d "0" /f >> "%LogFile%"

    :: Remove Interrupt Delays
    echo Removing Interrupt Delays for %%n... >> "%LogFile%"
    reg add "%%n" /v "TxIntDelay" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "TxAbsIntDelay" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "RxIntDelay" /t REG_SZ /d "0" /f >> "%LogFile%"
    reg add "%%n" /v "RxAbsIntDelay" /t REG_DWORD /d "0" /f >> "%LogFile%"

    :: Remove Adapter Notification
    echo Removing Adapter Notification Sending for %%n... >> "%LogFile%"
    reg add "%%n" /v "FatChannelIntolerant" /t REG_SZ /d "0" /f >> "%LogFile%"

    :: Disable Interrupt Moderation
    echo Disabling Interrupt Moderation for %%n... >> "%LogFile%"
    reg add "%%n" /v "*InterruptModeration" /t REG_SZ /d "0" /f >> "%LogFile%"
)

:: Enable WeakHost Send and Receive
echo Enabling WeakHost Send and Receive... >> "%LogFile%"
powershell -Command "Get-NetAdapter -IncludeHidden | Set-NetIPInterface -WeakHostSend Enabled -WeakHostReceive Enabled -ErrorAction SilentlyContinue" >> "%LogFile%"

:: Increase DNS Cache Size
echo Increasing DNS Cache Size... >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxCacheTtl" /t REG_DWORD /d "86400" /f >> "%LogFile%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxNegativeCacheTtl" /t REG_DWORD /d "900" /f >> "%LogFile%"

