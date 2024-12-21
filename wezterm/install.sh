#!/bin/bash
set -eu
cd "$(dirname "$0")"
[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

mkdir -p "$HOME"/.config/wezterm
ln -nfs "$PWD/config/wezterm.lua" "$HOME/.config/wezterm/wezterm.lua"
