#! /bin/bash
#bootstrap.sh populates your $HOME directory with symlinks to your dotfiles

set -e

base=$(dirname ${BASH_SOURCE})
cd $base
git pull origin master

find dots -type f -execdir ln -sf $(pwd)/dots/{} ~/{} \;

function fetch_git {
  REPO=$1
  REPODIR=$(echo $REPO | sed 's/.*\/\(.*\)\.git$/\1/')
  OLDPWD=$(pwd)
  mkdir -p $HOME/dev
  DESTDIR="$HOME/dev/$REPODIR"
  if [ ! -d $DESTDIR ]; then
      git clone --recursive $REPO $DESTDIR
  fi
  cd $DESTDIR
  git pull && git submodule update --init --recursive
  cd $OLDPWD
}

fetch_git git@github.com:olivierverdier/zsh-git-prompt.git

# TODO: make this into a proper conditional and have one for linux 
# OSX specific settings found in this file
OS=$(uname -s)
./ostype-$OS.sh
