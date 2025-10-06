@echo off
echo.
echo ========================================
echo    MERN Authentication Portal
echo ========================================
echo.

echo [1/4] Checking if Node.js is installed...
node --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Node.js is not installed. Please install Node.js first.
    echo Download from: https://nodejs.org/
    pause
    exit /b 1
)
echo ✅ Node.js is installed

echo.
echo [2/4] Checking if MongoDB is running...
echo Please ensure MongoDB is running on your system.
echo If using MongoDB Atlas, ensure your connection string is correct.
echo.

echo [3/4] Starting Backend Server...
start "Backend Server" cmd /k "cd backend && echo Starting Backend Server... && npm start"

echo Waiting for backend to initialize...
timeout /t 5 /nobreak > nul

echo.
echo [4/4] Starting Frontend Server...
start "Frontend Server" cmd /k "cd client && echo Starting Frontend Server... && npm start"

echo.
echo ========================================
echo 🚀 Application is starting...
echo ========================================
echo.
echo 📱 Frontend: http://localhost:3000
echo 🔧 Backend:  http://localhost:5000
echo.
echo ⚠️  Make sure MongoDB is running!
echo.
echo Press any key to continue...
pause >nul
