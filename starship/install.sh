#!/bin/bash
set -eu
cd "$(dirname "$0")"
[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

ln -nfs "$PWD/config/starship.toml" "$HOME/.config/starship.toml"
