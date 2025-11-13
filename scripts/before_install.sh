#!/bin/bash
set -e

# Go to project folder
cd /home/ec2-user/server

# Clean old deployment files
rm -rf *

# Install correct Node.js version (>=20.19)
curl -fsSL https://rpm.nodesource.com/setup_20.x | sudo -E bash -
sudo yum install -y nodejs

# Check installed version
node -v
npm -v

# Install PM2 globally
sudo npm install pm2@latest -g

echo "✅ Node.js updated to correct version and EC2 prepared."
