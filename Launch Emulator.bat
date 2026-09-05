@echo off
echo Starting the Galaxy S24+ virtual Android phone...
echo (A window will appear in a few seconds - leave this window open while it boots)
echo.
"C:\Program Files (x86)\Android\android-sdk\emulator\emulator.exe" -avd Galaxy_S24_Plus -no-snapshot -netdelay none -netspeed full
