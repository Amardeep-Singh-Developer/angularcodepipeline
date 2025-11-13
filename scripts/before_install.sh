#!/bin/bash
set -e

# Go to project folder
cd /home/ec2-user/server

# Clean old deployment files
rm -rf *

# Remove old Node.js (v18) if exist
sudo yum remove -y nodejs npm

# Install Node.js v20 (correct version)
curl -fsSL https://rpm.nodesource.com/setup_20.x | sudo -E bash -
sudo yum install -y nodejs

# Verify Node version
node -v
npm -v

# Install PM2 globally
sudo npm install pm2@latest -g

echo "✅ Node.js updated to v20 and EC2 prepared."
