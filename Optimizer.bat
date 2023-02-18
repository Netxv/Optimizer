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
deltree /y c:\windows\tempor~1 >nul 2>&1
deltree /y c:\windows\temp >nul 2>&1
deltree /y c:\windows\tmp >nul 2>&1
deltree /y c:\windows\ff*.tmp >nul 2>&1
deltree /y c:\windows\history >nul 2>&1
deltree /y c:\windows\cookies >nul 2>&1
deltree /y c:\windows\recent >nul 2>&1
deltree /y c:\windows\spool\printers >nul 2>&1
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
"C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe" /Profile1 /Q
cls
echo ----------------------------------
echo Done...Quitting
echo ----------------------------------
timeout 1 > NUL
exit