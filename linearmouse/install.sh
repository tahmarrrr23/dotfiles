#!/bin/bash
set -eu
cd "$(dirname "$0")"
[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

mkdir -p "$HOME"/.config/linearmouse
ln -fns "$PWD/config/linearmouse.json" "$HOME/.config/linearmouse/linearmouse.json"
