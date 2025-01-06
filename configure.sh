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
mkdir -p "$HOME"/.config/wezterm
mkdir -p "$HOME"/.config/ghostty

ln -s -f "$root_path/prompt/zsh/zshrc" "$HOME/.zshrc"
ln -s -f "$root_path/prompt/zsh/zprofile" "$HOME/.zprofile"
ln -s -f "$root_path/prompt/sheldon/plugins.toml" "$HOME/.config/sheldon/plugins.toml"
ln -s -f "$root_path/prompt/starship/starship.toml" "$HOME/.config/starship.toml"
ln -s -f "$root_path/wezterm/wezterm.lua" "$HOME/.config/wezterm/wezterm.lua"
ln -s -f "$root_path/ghostty/config" "$HOME/.config/ghostty/config"
ln -s -f "$root_path/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
