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

brew bundle --file="$root_path/homebrew/Brewfile"

zsh_bin=$(brew --prefix)/bin/zsh
if ! fgrep -q $zsh_bin /etc/shells; then
  echo $zsh_bin | sudo tee -a /etc/shells
  chsh -s $zsh_bin
fi
