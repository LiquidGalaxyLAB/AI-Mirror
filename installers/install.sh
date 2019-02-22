#!/usr/bin/env bash

# Download & Updates List of packages

sudo apt-get update && sudo apt-get dist-upgrade

# Install Magic Mirror project

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - 

sudo apt install -y nodejs

bash -c "$(curl -sL https://raw.githubusercontent.com/MichMich/MagicMirror/master/installers/raspberry.sh)"


# Add config file
wget https://raw.githubusercontent.com/LiquidGalaxyLAB/AI-Mirror/master/config/config.js -O ~/MagicMirror/config/config.js

# Install modules


# Magic Mirror end
read -p "Do you want to start AI Mirror now (y/N)?" choice
if [[ $choice =~ ^[Yy]$ ]]; then
	npm start
fi
