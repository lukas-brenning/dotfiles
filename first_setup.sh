# Homebrew
# ------------------------------------------
# Install X-Code
xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Check installation
brew install docker
brew install docker-machine
brew services start docker-machine
brew install virtualbox  # Requires SystemPreferences intervention
docker-machine create default --virtualbox-cpu-count 6 --virtualbox-memory 8192

# Create "docker" group and put me in it
sudo dseditgroup -o create docker
sudo dseditgroup -o edit -a price -t user docker

# Run this to set environment before running docker
eval $(docker-machine env default)

# Install applications
# ------------------------------------------
# Atom
brew cask install atom

# Caffeine
brew cask install caffeine

# CheatSheet
brew cask install cheatsheet

# Docker

# Duet
brew cask install duet

# JetBrains Toolbox
brew cask install jetbrains-toolbox

# Jumpcut
brew cask install jumpcut

# Skitch
brew cask install skitch

# Paintbrush
brew cask install paintbrush

# R
brew install r

# RStudio
brew cask install rstudio

# Slack
brew cask install slack

# Spotify
brew cask install spotify

# Telegram
brew cask install telegram

# WhatsApp
brew cask install whatsapp
