#!/bin/bash
set -e

# Go to project folder
cd /home/ec2-user/server

# ✅ Install dependencies
npm install

# ✅ Build the Angular app
npm run build --prod

echo "✅ AfterInstall: Angular build completed successfully."
