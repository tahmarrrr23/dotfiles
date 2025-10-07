#!/bin/bash
set -eu
cd "$(dirname "$0")"
[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

mkdir -p "$HOME"/.config/atuin
ln -nfs "$PWD/config/config.toml" "$HOME/.config/atuin/config.toml"
