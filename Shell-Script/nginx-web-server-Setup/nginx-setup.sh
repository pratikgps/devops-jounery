#!/bin/bash

# nginx-setup.sh - Install & configure Nginx

echo "Installing Nginx..."
sudo apt update -y && sudo apt install -y nginx

echo "Starting Nginx..."
sudo systemctl start nginx
sudo systemctl enable nginx

echo "Creating sample index.html..."
echo "<h1>Welcome to my DevOps Journey</h1>" | sudo tee /var/www/html/index.html

echo "Nginx setup complete!"
