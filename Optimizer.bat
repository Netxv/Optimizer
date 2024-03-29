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

:: Delete Temporary Files
del /f /q %temp%\* >nul 2>&1

:: Delete RevoltG Temps
del /f /q "%appdata%\revoltg\Cache\*" >nul 2>&1
del /f /q "%appdata%\revoltg\Code Cache\*" >nul 2>&1
del /f /q "%appdata%\revoltg\blob_storage\*" >nul 2>&1
del /f /q "%appdata%\revoltg\GPUCache\*" >nul 2>&1

:: Delete Windows Temps
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

:: Delete AMD Caches
del /f /q %localappdata%\AMD\DX9Cache >nul 2>&1
del /f /q %localappdata%\AMD\DxCache >nul 2>&1
del /f /q %localappdata%\AMD\DxcCache >nul 2>&1
del /f /q %localappdata%\AMD\OglCache >nul 2>&1
del /f /q %localappdata%\AMD\VkCache >nul 2>&1

:: Discord Debloat
rd /s /q %localappdata%\Discord\app-1.0.9013\modules\discord_cloudsync-1 >nul 2>&1
rd /s /q %localappdata%\Discord\app-1.0.9013\modules\discord_krisp-1 >nul 2>&1
rd /s /q %localappdata%\Discord\app-1.0.9013\modules\discord_dispatch-1 >nul 2>&1
rd /s /q %localappdata%\Discord\app-1.0.9013\modules\discord_erlpack-1 >nul 2>&1
rd /s /q %localappdata%\Discord\app-1.0.9013\modules\discord_game_utils-1 >nul 2>&1
rd /s /q %localappdata%\Discord\app-1.0.9013\modules\discord_media-2 >nul 2>&1
rd /s /q %localappdata%\Discord\app-1.0.9013\modules\discord_overlay2-1 >nul 2>&1
rd /s /q %localappdata%\Discord\app-1.0.9013\modules\discord_spellcheck-1 >nul 2>&1

:: Spotify Debloat

:: Remove Files
del /f /s /q "%appdata%\Spotify\Apps\Buddy-list.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Concert.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Concerts.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Error.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Findfriends.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Legacy-lyrics.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Lyrics.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Show.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Buddy-list.spa" >NUL 2>&1

:: May add more in the future but idk

echo ----------------------------------
echo Done...Quitting
echo ----------------------------------
timeout 1 > NUL
exit
