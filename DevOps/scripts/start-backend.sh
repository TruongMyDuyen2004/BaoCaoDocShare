#!/bin/bash

echo "🚀 Starting DocShare Backend..."

# Navigate to backend directory
cd ../LieuKienAn-Backend

# Check if .env exists
if [ ! -f .env ]; then
    echo "📝 Creating .env file from .env.example..."
    cp .env.example .env
    echo "⚠️  Please update .env file with your configuration"
fi

# Install dependencies if node_modules doesn't exist
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
fi

# Start MongoDB if not running
if ! pgrep -x "mongod" > /dev/null; then
    echo "🍃 Starting MongoDB..."
    # For Windows with MongoDB service
    net start MongoDB 2>/dev/null || echo "MongoDB might already be running or needs manual start"
fi

# Wait for MongoDB to be ready
echo "⏳ Waiting for MongoDB to be ready..."
sleep 3

# Seed database if needed
echo "🌱 Seeding database..."
npm run seed 2>/dev/null || echo "Database seeding skipped or failed"

# Start the backend server
echo "🎯 Starting backend server..."
npm run dev
