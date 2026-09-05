@echo off
set "ADB=C:\Program Files (x86)\Android\android-sdk\platform-tools\adb.exe"
rem Keep in sync with SamDrobe.csproj's ApplicationDisplayVersion (and "Create Test
rem Build.bat"'s APP_VERSION) — manual update whenever that version changes.
set "APK=%~dp0apk\SamDrobe-v0.5.0.0-debug.apk"

echo Waiting for the emulator to be ready...
echo (Run "Launch Emulator.bat" first if it isn't already open)
"%ADB%" wait-for-device

echo.
echo Installing SamDrobe...
"%ADB%" install -r "%APK%"

echo.
echo Done. Open the SamDrobe icon on the virtual phone's app drawer/home screen.
pause
