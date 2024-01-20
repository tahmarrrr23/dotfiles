#!/bin/bash
set -eu
cd "$(dirname "$0")"
[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

if [ ! -d "$HOME/.config/sheldon" ]; then
  sheldon init --shell zsh
fi

ln -nfs "$PWD"/config/plugins.toml "$HOME"/.config/sheldon/plugins.toml
