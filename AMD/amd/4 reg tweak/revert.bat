for /f %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /s /v "DriverDesc"^| findstr "HKEY AMD ATI"') do if /i "%%i" neq "DriverDesc" (set "REGPATH_AMD=%%i")
 
reg delete "%REGPATH_AMD%" /v "3D_Refresh_Rate_Override_DEF" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "3to2Pulldown_NA" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "AAF_NA" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "Adaptive De-interlacing" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "AllowRSOverlay" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "AllowSkins" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "AllowSnapshot" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "AllowSubscription" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "AntiAlias_NA" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "AreaAniso_NA" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "ASTT_NA" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "AutoColorDepthReduction_NA" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "DisableSAMUPowerGating" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "DisableUVDPowerGatingDynamic" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "DisableVCEPowerGating" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "EnableAspmL0s" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "EnableAspmL1" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "EnableUlps" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "EnableUlps_NA" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "KMD_DeLagEnabled" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "KMD_FRTEnabled" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "DisableDMACopy" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "DisableBlockWrite" /t Reg_DWORD /d "1" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "StutterMode" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "EnableUlps" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "PP_SclkDeepSleepDisable" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "PP_ThermalAutoThrottlingEnable" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "DisableDrmdmaPowerGating" /f >nul 2>&1
reg delete "%REGPATH_AMD%" /v "KMD_EnableComputePreemption" /f >nul 2>&1
reg delete "%REGPATH_AMD%\UMD" /v "Main3D_DEF" /f >nul 2>&1
reg delete "%REGPATH_AMD%\UMD" /v "Main3D" /f >nul 2>&1
reg delete "%REGPATH_AMD%\UMD" /v "FlipQueueSize" /f >nul 2>&1
reg delete "%REGPATH_AMD%\UMD" /v "ShaderCache" /f >nul 2>&1
reg delete "%REGPATH_AMD%\UMD" /v "Tessellation_OPTION" /f >nul 2>&1
reg delete "%REGPATH_AMD%\UMD" /v "Tessellation" /f >nul 2>&1
reg delete "%REGPATH_AMD%\UMD" /v "VSyncControl" /f >nul 2>&1
reg delete "%REGPATH_AMD%\UMD" /v "TFQ" /f >nul 2>&1
reg delete "%REGPATH_AMD%\DAL2_DATA__2_0\DisplayPath_4\EDID_D109_78E9\Option" /v "ProtectionControl" /f >nul 2>&1