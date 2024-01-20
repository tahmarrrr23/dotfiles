#!/bin/sh
set -eu

echo ""
echo "##################"
echo "#    Howdy!🤠    #"
echo "##################"
echo ""

echo "🤠 xcode-select"
if [ ! -d "/Library/Developer/CommandLineTools" ]; then
  xcode-select --install
else
  echo "already installed"
fi

echo ""

echo "🤠 rosetta 2"
if [ ! -d "/Library/Apple/usr/share/rosetta" ]; then
  softwareupdate --install-rosetta --agree-to-license
else
  echo "already installed"
fi

echo ""

echo "🤠 homebrew"
if [ ! -d "/opt/homebrew" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "already installed"
fi

echo ""

echo "🤠 essential software"
/opt/homebrew/bin/brew install \
  google-chrome \
  google-japanese-ime \
  rectangle \
  scroll-reverser \
  logitech-g-hub

echo ""
