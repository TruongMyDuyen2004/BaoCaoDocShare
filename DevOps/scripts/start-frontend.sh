#!/bin/bash

echo "🚀 Starting DocShare Frontend..."

# Navigate to frontend directory
cd ../TruongMyDuyen-Frontend

# Check if .env.local exists
if [ ! -f .env.local ]; then
    echo "📝 Creating .env.local file..."
    cat > .env.local << EOF
NEXT_PUBLIC_API_URL=http://localhost:5000/api
NODE_ENV=development
EOF
    echo "✅ .env.local created"
fi

# Install dependencies if node_modules doesn't exist
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
fi

# Install Shadcn/ui components if not exists
if [ ! -d "src/components/ui" ]; then
    echo "🎨 Setting up Shadcn/ui..."
    npx shadcn@latest init -y
    npx shadcn@latest add button
    npx shadcn@latest add input
    npx shadcn@latest add form
    npx shadcn@latest add card
    npx shadcn@latest add dialog
fi

# Start the frontend server
echo "🎯 Starting frontend server..."
npm run dev
