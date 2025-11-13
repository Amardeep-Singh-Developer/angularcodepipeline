#!/bin/bash
set -e

cd /home/ec2-user/server

# Install backend dependencies if any
npm install

# Angular already built in CodeBuild → no ng build needed
echo "✅ Deployment ready. Angular build already done."
