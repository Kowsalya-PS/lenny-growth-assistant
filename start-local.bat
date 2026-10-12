@echo off
echo ========================================================
echo   Starting The Lenny Growth Assistant (Native Windows)
echo ========================================================
echo.

cd /d D:\lenny-growth-assistant\backend
start "Lenny Backend (Port 8000)" cmd /k "venv\Scripts\uvicorn.exe main:app --reload --port 8000"

cd /d D:\lenny-growth-assistant\frontend
start "Lenny Frontend (Port 5173)" cmd /k "npm run dev"

echo Backend running at http://localhost:8000/docs
echo Frontend running at http://localhost:5173
echo.
pause
