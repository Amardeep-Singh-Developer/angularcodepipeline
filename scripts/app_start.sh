#!/bin/bash
set -e

cd /home/ec2-user/server/dist/stolt

# Install serve globally if not installed
npm install -g serve

# Start Angular app in background using nohup
nohup serve -s . -l 4200 > /home/ec2-user/server/serve.log 2>&1 &

echo "✅ Angular app started on port 4200"

# Exit 0 explicitly for CodeDeploy
exit 0
