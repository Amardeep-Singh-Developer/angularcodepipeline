#!/bin/bash
set -e

# Go to project folder
cd /home/ec2-user/server

# ✅ Clean old deployment files to avoid overwrite errors
rm -rf *

# Update & set Node.js version
curl -sL https://rpm.nodesource.com/setup_20.x | sudo -E bash -

# Install Node.js and NPM
sudo yum -y install nodejs npm

# Install PM2 globally
sudo npm install pm2@latest -g

echo "✅ BeforeInstall: EC2 prepared and old files removed."
