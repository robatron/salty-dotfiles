#! /bin/bash
#
# Automate installation
#

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Python and PIP
brew install python

# Install SaltStack with PIP
sudo pip install salt
