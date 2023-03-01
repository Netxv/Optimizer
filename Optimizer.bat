@echo off
title Optimizer By Net - %time%
@echo off
color 0a
echo *************************************************************
echo *  8888  88888  88888 88888 8   8 88888 88888 88888 8888    *
echo * 8    8 8    8   8     8   88 88   8      8  8     8   8   *
echo * 8    8 88888    8     8   8 8 8   8     8   8888  8888    *
echo * 8    8 8        8     8   8   8   8    8    8     8   8   *
echo *  8888  8        8   88888 8   8 88888 88888 88888 8    8  *
echo *************************************************************
echo Credits to Net#2025
echo --------------------
timeout 2 > NUL
cls

dism >nul 2>&1
del /f /q %temp%\* >nul 2>&1
del /f /q %windir%\Temp\* >nul 2>&1
del /f /q %windir%\prefetch\* >nul 2>&1
del /f /q %localappdata%\Temp\* >nul 2>&1
del /f /q %localappdata%\NVIDIA >nul 2>&1
del /f /q %localappdata%\Microsoft\Windows\WebCache\*.* >nul 2>&1
del /f /q %SystemRoot%\setupapi.log >nul 2>&1
del /f /q %SystemRoot%\Panther\* >nul 2>&1
del /f /q %SystemRoot%\inf\setupapi.app.log >nul 2>&1
del /f /q %SystemRoot%\inf\setupapi.dev.log >nul 2>&1
del /f /q %SystemRoot%\inf\setupapi.offline.log >nul 2>&1
rd /s /q %localappdata%\Discord\app-1.0.9011\modules\discord_cloudsync-1
rd /s /q %localappdata%\Discord\app-1.0.9011\modules\discord_krisp-1
rd /s /q %localappdata%\Discord\app-1.0.9011\modules\discord_dispatch-1
rd /s /q %localappdata%\Discord\app-1.0.9011\modules\discord_erlpack-1
rd /s /q %localappdata%\Discord\app-1.0.9011\modules\discord_game_utils-1
rd /s /q %localappdata%\Discord\app-1.0.9011\modules\discord_media-1
rd /s /q %localappdata%\Discord\app-1.0.9011\modules\discord_overlay2-1
rd /s /q %localappdata%\Discord\app-1.0.9011\modules\discord_spellcheck-1

echo ------------------------------------
echo Task 1: All Temporary Files Deleted
echo ------------------------------------
timeout 1 > NUL
echo Task 2: Compressing Windows...
echo ------------------------------------
timeout 1 > NUL

Compact.exe /CompactOS:always > NUL
echo Task 3: Spoofing HWID...
echo ------------------------------------
timeout 1 > NUL

%WINDIR%\AntiOS\generate_fingerprint.py > NUL
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global" /v "{41FCC608-8496-4DEF-B43E-7D9BD675A6FF}" /t REG_BINARY /d "01" /f
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "{41FCC608-8496-4DEF-B43E-7D9BD675A6FF}" /t REG_BINARY /d "01" /f
"C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe" /Profile1 /Q
cls

echo ----------------------------------
echo Done...Quitting
echo ----------------------------------
timeout 1 > NUL
exit
