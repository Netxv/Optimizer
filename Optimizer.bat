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
set temp1="C:\Users\Administrator\AppData\Local\Temp\"
set temp2="E:\TEMP\"
del /s /f /q C:\windows\temp\*.* >nul 2>&1
del /s /f /q C:\WINDOWS\Prefetch >nul 2>&1
del /s /f /q %temp%\*.* >nul 2>&1
del /s /f /q D:\Temp >nul 2>&1
del /s /f /q C:\Users\Administrator\AppData\Local\NVIDIA >nul 2>&1
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
C:\Users\Net\Documents\AntiOS\generate_fingerprint.py > NUL
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global" /v "{41FCC608-8496-4DEF-B43E-7D9BD675A6FF}" /t REG_BINARY /d "01" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "{41FCC608-8496-4DEF-B43E-7D9BD675A6FF}" /t REG_BINARY /d "01" /f
"C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe" /Profile1 /Q
cls
echo ----------------------------------
echo Done...Quitting
echo ----------------------------------
timeout 1 > NUL
exit
