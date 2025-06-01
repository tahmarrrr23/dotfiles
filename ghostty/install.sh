#!/bin/bash
set -eu
cd "$(dirname "$0")"
[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

mkdir -p "$HOME"/.config/ghostty
ln -nfs "$PWD/config/config" "$HOME/.config/ghostty/config"
