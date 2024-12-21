#!/bin/sh

set -eu
cd "$(dirname "$0")"
root_path=$PWD

brew_cmd="/opt/homebrew/bin/brew"
if [ -f "$brew_cmd" ]; then
  eval "$($brew_cmd shellenv)"
else
  printf "Please install Homebrew\n"
  exit 1
fi

brew bundle dump \
  --brews --casks --taps \
  --force --file="$root_path"/homebrew/Brewfile
brew bundle dump \
  --vscode \
  --force --file="$root_path"/vscode/Brewfile