@echo off
REM Opens Screen 1 on the primary display and Screen 2 on the display to its right.
REM Each window uses its own profile so Chrome treats them as separate windows.
set HERE=%~dp0
set CHROME=
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" set CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe
if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" set CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe
if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" set CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" if "%CHROME%"=="" set CHROME=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe
if "%CHROME%"=="" (
  echo Could not find Chrome or Edge. Open screen1.html and screen2.html by hand.
  pause
  exit /b
)
set FLAGS=--kiosk --autoplay-policy=no-user-gesture-required --disable-session-crashed-bubble --noerrdialogs --disable-infobars --no-first-run --disable-features=TranslateUI
start "" "%CHROME%" %FLAGS% --user-data-dir="%TEMP%\sips-screen1" --window-position=0,0 "file:///%HERE:\=/%screen1.html"
timeout /t 3 /nobreak >nul
start "" "%CHROME%" %FLAGS% --user-data-dir="%TEMP%\sips-screen2" --window-position=1920,0 "file:///%HERE:\=/%screen2.html"
