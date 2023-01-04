#!/bin/sh

# Delete existing installations
sudo apt-get remove docker docker-engine docker.io containerd runc

# Set up repos
sudo apt-get update
sudo apt-get install     ca-certificates     curl     gnupg     lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo   "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu   focal stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install docker engine
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Create docker group


# Add yourself to group
sudo usermod -aG docker root

# Activate changes
#newgrp docker

# Test docker installation
docker run hello-world

if [ 0 -ne 0 ]
then
    echo "Docker installation failed"
fi
