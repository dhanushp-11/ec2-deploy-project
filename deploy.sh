#!/bin/bash

echo "Deploying app on EC2..."

# Update server
sudo yum update -y

# Install Apache
sudo yum install httpd -y

# Start Apache
sudo systemctl start httpd
sudo systemctl enable httpd

# Add simple webpage
echo "<h1>Hello from GitHub + EC2 🚀</h1>" | sudo tee /var/www/html/index.html
