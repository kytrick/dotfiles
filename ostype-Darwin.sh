#!/bin/bash

# This file has OSX specific configurations

# Install homebrew
if ! which brew > /dev/null; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# opening and closing windows and popovers
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

brew update
# Run Brewfile
brew bundle # searches for a file called Brewfile in cwd

