# 🚀 Quick Start Guide

## Step 1: Environment Setup

1. **Create environment file**
   ```bash
   # Copy the example file
   cp backend/env.example backend/.env
   ```

2. **Edit the .env file**
   ```env
   # MongoDB Configuration
   MONGO_URI=mongodb://localhost:27017/mern-auth
   
   # JWT Secret Key
   JWT_SECRET=your_super_secret_jwt_key_here_12345
   
   # Server Port
   PORT=5000
   
   # Environment
   NODE_ENV=development
   ```

## Step 2: Install Dependencies

```bash
# Install root dependencies
npm install

# Install backend dependencies
cd backend
npm install

# Install frontend dependencies
cd ../client
npm install
```

## Step 3: Start MongoDB

### Option A: Local MongoDB
```bash
# Windows
net start MongoDB

# macOS
brew services start mongodb-community

# Linux
sudo systemctl start mongod
```

### Option B: MongoDB Atlas
- Create account at https://www.mongodb.com/cloud/atlas
- Create cluster and get connection string
- Update MONGO_URI in .env file

## Step 4: Run the Application

### Method 1: Using npm scripts
```bash
# Start both backend and frontend
npm start
```

### Method 2: Manual start
```bash
# Terminal 1 - Backend
cd backend
npm start

# Terminal 2 - Frontend
cd client
npm start
```

### Method 3: Using batch/shell scripts
```bash
# Windows
run.bat

# macOS/Linux
./run.sh
```

## Step 5: Access the Application

- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:5000

## Step 6: Test the Application

1. **Register a new user**
   - Go to http://localhost:3000
   - Fill registration form
   - Click "Create Account"

2. **Login**
   - Use registered credentials
   - Click "Sign In"

3. **Dashboard**
   - Verify user information
   - Test logout functionality

## 🎯 Features to Test

✅ **Registration**
- Form validation
- Password strength indicator
- Success/error messages

✅ **Login**
- Credential validation
- Remember me functionality
- Password visibility toggle

✅ **Dashboard**
- User profile display
- Statistics cards
- Quick actions
- Logout functionality

✅ **Responsive Design**
- Mobile view
- Tablet view
- Desktop view

## 🔧 Troubleshooting

### MongoDB Connection Issues
```bash
# Check if MongoDB is running
# Windows
sc query MongoDB

# macOS/Linux
brew services list | grep mongodb
```

### Port Already in Use
```bash
# Kill process on port 3000
npx kill-port 3000

# Kill process on port 5000
npx kill-port 5000
```

### Dependencies Issues
```bash
# Clear npm cache
npm cache clean --force

# Delete node_modules and reinstall
rm -rf node_modules
npm install
```

## 🎉 Success!

If everything is working correctly, you should see:
- Beautiful glassmorphism login/register pages
- Smooth animations and transitions
- Responsive design on all devices
- Secure authentication flow
- Professional dashboard interface

---

**Need help?** Check the full [SETUP.md](./SETUP.md) for detailed instructions.
