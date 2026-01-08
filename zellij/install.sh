#!/bin/sh
root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "-> [zellij] install configuration..."

rm -rf "$HOME/.config/zellij"
ln -sfn "$root_directory/zellij/config" "$HOME/.config/zellij"
