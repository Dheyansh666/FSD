#!/bin/bash

echo ""
echo "========================================"
echo "    MERN Authentication Portal"
echo "========================================"
echo ""

echo "[1/4] Checking if Node.js is installed..."
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js first."
    echo "Download from: https://nodejs.org/"
    exit 1
fi
echo "✅ Node.js is installed"

echo ""
echo "[2/4] Checking if MongoDB is running..."
echo "Please ensure MongoDB is running on your system."
echo "If using MongoDB Atlas, ensure your connection string is correct."
echo ""

echo "[3/4] Starting Backend Server..."
cd backend
npm start &
BACKEND_PID=$!

echo "Waiting for backend to initialize..."
sleep 5

echo ""
echo "[4/4] Starting Frontend Server..."
cd ../client
npm start &
FRONTEND_PID=$!

echo ""
echo "========================================"
echo "🚀 Application is starting..."
echo "========================================"
echo ""
echo "📱 Frontend: http://localhost:3000"
echo "🔧 Backend:  http://localhost:5000"
echo ""
echo "⚠️  Make sure MongoDB is running!"
echo ""
echo "Press Ctrl+C to stop both servers"
echo ""

# Wait for user to stop
wait $BACKEND_PID $FRONTEND_PID
