@echo off
REM SYMB-MIR - double-click launcher (Windows)
REM Serves this folder and opens the popout in your browser.

cd /d "%~dp0"

set PORT=8000
netstat -ano | findstr ":%PORT% " >nul && set PORT=8001
netstat -ano | findstr ":%PORT% " >nul && set PORT=8002

echo SYMB-MIR - serving %cd% on port %PORT%
echo Leave this window open while you record. Close it to stop.
echo.

start "" http://localhost:%PORT%/web/symb-mir-popout.html
python -m http.server %PORT%
