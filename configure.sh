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

brew bundle --file="$root_path/vscode/Brewfile"

mkdir -p "$HOME"/.config/sheldon
mkdir -p "$HOME"/.config/starship

ln -s -f "$root_path/prompt/zsh/zshrc" "$HOME/.zshrc"
ln -s -f "$root_path/prompt/zsh/zprofile" "$HOME/.zprofile"
ln -s -f "$root_path/prompt/sheldon/config.toml" "$HOME/.config/sheldon/config.toml"
ln -s -f "$root_path/prompt/starship/config.toml" "$HOME/.config/starship/config.toml"
ln -s -f "$root_path/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
