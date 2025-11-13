#!/bin/bash
set -e

cd /home/ec2-user/server/dist/stolt

# Install serve globally if not installed
npm install -g serve

# Start Angular app (serving static files)
serve -s . -l 4200 &

echo "✅ Angular app started on port 4200"
