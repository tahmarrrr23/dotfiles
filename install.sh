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
