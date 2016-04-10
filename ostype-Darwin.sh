#!/bin/bash

# This file has OSX specific configurations

brew cask install haskell-platform
brew install haskell-stack

# zsh-git-prompt
# compile gitstatus executable (in haskell) which results in the prompt returning faster
# This can be tested with:  zmodload zsh/zprof; zprof

cd $HOME/dev/zsh-git-prompt
stack setup
stack build
stack install