#!/bin/bash
set -eu
cd "$(dirname "$0")"

[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

# zsh
ln -nfs "$PWD/zsh/zshrc" "$HOME/.zshrc"

# vscode
ln -nfs "$PWD/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

# sheldon
if [ ! -d "$HOME/.config/sheldon" ]; then
  sheldon init --shell zsh
fi
ln -nfs "$PWD"/sheldon/plugins.toml "$HOME"/.config/sheldon/plugins.toml
ln -nfs "$PWD"/sheldon/local "$HOME"/.config/sheldon/local

# tabby
ln -nfs "$PWD/tabby/config.yaml" "$HOME/Library/Application Support/tabby/config.yaml"

# starship
ln -nfs "$PWD/starship/starship.toml" "$HOME/.config/starship.toml"

# wezterm
mkdir -p "$HOME"/.config/wezterm
ln -nfs "$PWD/wezterm/wezterm.lua" "$HOME/.config/wezterm/wezterm.lua"
