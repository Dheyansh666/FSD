# 🚀 MERN Authentication Portal - Complete Setup Guide

## 📋 Prerequisites

Before starting, ensure you have the following installed on your system:

- **Node.js** (v14 or higher) - [Download here](https://nodejs.org/)
- **MongoDB** - [Download here](https://www.mongodb.com/try/download/community)
- **Git** - [Download here](https://git-scm.com/)
- **VS Code** (recommended) - [Download here](https://code.visualstudio.com/)

## 🛠️ Installation & Setup

### Step 1: Clone the Repository
```bash
git clone <your-repository-url>
cd mern-auth
```

### Step 2: Backend Setup

1. **Navigate to backend directory**
   ```bash
   cd backend
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Create environment file**
   ```bash
   # Copy the example environment file
   cp env.example .env
   ```

4. **Configure environment variables**
   
   Edit the `.env` file with your configuration:
   ```env
   # MongoDB Configuration
   MONGO_URI=mongodb://localhost:27017/mern-auth
   
   # JWT Secret Key (Generate a strong secret key)
   JWT_SECRET=your_super_secret_jwt_key_here_make_it_long_and_secure_12345
   
   # Server Port
   PORT=5000
   
   # Environment
   NODE_ENV=development
   ```

### Step 3: Frontend Setup

1. **Navigate to client directory**
   ```bash
   cd ../client
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

### Step 4: MongoDB Setup

#### Option A: Local MongoDB Installation

1. **Install MongoDB Community Server**
   - Download from [MongoDB Download Center](https://www.mongodb.com/try/download/community)
   - Follow installation instructions for your OS

2. **Start MongoDB Service**
   
   **Windows:**
   ```bash
   # Start MongoDB service
   net start MongoDB
   ```
   
   **macOS:**
   ```bash
   # Start MongoDB service
   brew services start mongodb-community
   ```
   
   **Linux:**
   ```bash
   # Start MongoDB service
   sudo systemctl start mongod
   ```

#### Option B: MongoDB Atlas (Cloud Database)

1. **Create MongoDB Atlas Account**
   - Go to [MongoDB Atlas](https://www.mongodb.com/cloud/atlas)
   - Create a free account

2. **Create a Cluster**
   - Create a new cluster (free tier available)
   - Choose your region

3. **Configure Database Access**
   - Create a database user
   - Set username and password

4. **Configure Network Access**
   - Add your IP address or use 0.0.0.0/0 for all IPs (development only)

5. **Get Connection String**
   - Click "Connect" on your cluster
   - Choose "Connect your application"
   - Copy the connection string

6. **Update Environment Variables**
   ```env
   MONGO_URI=mongodb+srv://username:password@cluster.mongodb.net/mern-auth?retryWrites=true&w=majority
   ```

## 🚀 Running the Application

### Method 1: Manual Start (Recommended for Development)

1. **Start Backend Server**
   ```bash
   # Navigate to backend directory
   cd backend
   
   # Start the server
   npm start
   # or for development with auto-restart
   npm run server
   ```

2. **Start Frontend Server** (in a new terminal)
   ```bash
   # Navigate to client directory
   cd client
   
   # Start the React app
   npm start
   ```

### Method 2: Using Setup Scripts

I'll create setup scripts for easier deployment:

1. **Windows (run.bat)**
   ```batch
   @echo off
   echo Starting MERN Authentication Portal...
   
   echo Starting Backend Server...
   start cmd /k "cd backend && npm start"
   
   timeout /t 3 /nobreak > nul
   
   echo Starting Frontend Server...
   start cmd /k "cd client && npm start"
   
   echo Application starting...
   echo Backend: http://localhost:5000
   echo Frontend: http://localhost:3000
   pause
   ```

2. **macOS/Linux (run.sh)**
   ```bash
   #!/bin/bash
   echo "Starting MERN Authentication Portal..."
   
   echo "Starting Backend Server..."
   cd backend && npm start &
   
   sleep 3
   
   echo "Starting Frontend Server..."
   cd ../client && npm start &
   
   echo "Application starting..."
   echo "Backend: http://localhost:5000"
   echo "Frontend: http://localhost:3000"
   ```

## 🌐 Access the Application

Once both servers are running:

- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:5000
- **API Endpoints**:
  - POST `/api/auth/register` - User registration
  - POST `/api/auth/login` - User login

## 🧪 Testing the Application

### Test Registration
1. Open http://localhost:3000
2. Fill in the registration form
3. Click "Create Account"
4. Check for success message

### Test Login
1. Use the credentials from registration
2. Click "Sign In"
3. Should redirect to dashboard

### Test Dashboard
1. Verify user information is displayed
2. Test logout functionality
3. Check responsive design on different screen sizes

## 🔧 Troubleshooting

### Common Issues

1. **MongoDB Connection Error**
   ```
   Solution: Ensure MongoDB is running and connection string is correct
   ```

2. **Port Already in Use**
   ```
   Solution: Change PORT in .env file or kill the process using the port
   ```

3. **CORS Errors**
   ```
   Solution: Backend CORS is configured, ensure frontend URL is correct
   ```

4. **JWT Token Issues**
   ```
   Solution: Ensure JWT_SECRET is set in environment variables
   ```

### Reset Database
```bash
# Connect to MongoDB
mongo

# Use the database
use mern-auth

# Drop all collections
db.dropDatabase()

# Exit
exit
```

## 📁 Project Structure

```
mern-auth/
├── backend/
│   ├── config/
│   │   └── db.js          # Database configuration
│   ├── middleware/        # Custom middleware
│   ├── models/
│   │   └── User.js        # User model
│   ├── routes/
│   │   └── authRoutes.js  # Authentication routes
│   ├── utils/             # Utility functions
│   ├── .env               # Environment variables
│   ├── env.example        # Environment template
│   ├── package.json       # Backend dependencies
│   └── server.js          # Main server file
├── client/
│   ├── public/            # Static files
│   ├── src/
│   │   ├── components/    # Reusable components
│   │   ├── context/       # React context
│   │   ├── pages/         # Page components
│   │   ├── api/           # API calls
│   │   └── App.js         # Main app component
│   └── package.json       # Frontend dependencies
├── README.md              # Project documentation
└── SETUP.md               # This setup guide
```

## 🔒 Security Features

- **Password Hashing**: Using bcryptjs
- **JWT Authentication**: Secure token-based authentication
- **Input Validation**: Server-side validation
- **CORS Configuration**: Proper cross-origin setup
- **Environment Variables**: Sensitive data protection

## 🚀 Deployment

### Frontend Deployment (Vercel/Netlify)
1. Build the project: `npm run build`
2. Deploy the `build` folder

### Backend Deployment (Heroku/Railway)
1. Set environment variables in deployment platform
2. Deploy with MongoDB Atlas connection

## 📞 Support

If you encounter any issues:
1. Check the troubleshooting section
2. Verify all prerequisites are installed
3. Ensure MongoDB is running
4. Check environment variables
5. Review console logs for errors

---

**Happy Coding! 🎉**
