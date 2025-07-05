#!/bin/bash
set -eu
cd "$(dirname "$0")"
[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

mkdir -p "$HOME"/.config/mise
ln -nfs "$PWD/config/config.toml" "$HOME/.config/mise/config.toml"
