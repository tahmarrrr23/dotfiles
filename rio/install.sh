#!/bin/bash
set -eu
cd "$(dirname "$0")"
[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

mkdir -p "$HOME"/.config/rio
ln -nfs "$PWD/config/config.toml" "$HOME/.config/rio/config.toml"
ln -nfs "$PWD/config/themes" "$HOME/.config/rio/themes"
