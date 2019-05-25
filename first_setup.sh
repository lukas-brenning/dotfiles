# Settings (require restart to take effect)
# ------------------------------------------
# Enable tap-to-click
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

sudo defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

sudo defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

sudo defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1


# Homebrew
# ------------------------------------------
# Install X-Code
xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Check installation
brew doctor

# Install applications
# ------------------------------------------
# 1Password
brew cask install 1password

# Atom
brew cask install atom

# Adobe Reader
brew cask adobe-acrobat-reader

# Caffeine
brew cask install caffeine

# CheatSheet
brew cask install cheatsheet

# Curl
brew install curl

# Docker
brew install docker
brew install docker-machine
brew services start docker-machine
brew install virtualbox  # Requires SystemPreferences intervention

docker-machine create default --virtualbox-cpu-count 6 --virtualbox-memory 8192

sudo dseditgroup -o edit -a price -t user docker

## Run this to set environment before running docker
eval $(docker-machine env default)

## Create "docker" group and put me in it
sudo dseditgroup -o create docker

# Duet
brew cask install duet

# Git
brew install git
brew install bash-completion

# JetBrains Toolbox
brew cask install jetbrains-toolbox

# Jumpcut
brew cask install jumpcut

# Jupyter
brew install jupyter

# Skitch
brew cask install skitch

# Paintbrush
brew cask install paintbrush

# Postgresql
brew install postgresql

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

# Python
# ------------------------------------------
## install pyenv-virtualenv
brew install pyenv-virtualenv

## install Python 2.7.15
pyenv install 2.7.15

## install Python 3.6.6
pyenv install 3.6.6

# Go
# ------------------------------------------
brew install golang

# Git
# ------------------------------------------
git config --global user.name $1
git config --global user.email $2

# SSH
# ------------------------------------------
mkdir $HOME/.ssh
chmod 0700 $HOME/.ssh

# Others
# ------------------------------------------
# Tree
brew install tree

mkdir $HOME/.ssh
ssh-keygen -t rsa -b 4096 -C "$3 $4 <$2>"

# Script to have auto complete and different style in bash
curl -L https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/git-completion.bash
