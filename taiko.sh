#!/bin/bash

# Check if docker is installed, else install it
if command -v docker &>/dev/null; then
  echo "Docker is already installed."
else
echo "Docker is not installed. Installing..."

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install docker packages
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
fi

# Check if Git is installed
if command -v git &>/dev/null; then
  echo "Git is already installed."
else
   echo "Installing git"
  sudo apt-get install git-all
fi
git clone https://github.com/taikoxyz/simple-taiko-node.git

#after the node is cloned and .env file configured, docker compose up -d






