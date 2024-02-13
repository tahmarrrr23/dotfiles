#!/bin/sh
set -eu

if [ ! -d "/Library/Apple/usr/share/rosetta" ]; then
  softwareupdate --install-rosetta --agree-to-license
else
  echo "rosetta 2 already installed"
fi

if [ ! -d "/opt/homebrew" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "homebrew already installed"
fi

/opt/homebrew/bin/brew tap homebrew/cask-fonts

/opt/homebrew/bin/brew install \
  google-chrome \
  google-japanese-ime \
  rectangle \
  scroll-reverser \
  logitech-g-hub \
  font-plemol-jp \
  font-plemol-jp-nf
