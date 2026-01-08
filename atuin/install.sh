#!/bin/sh
root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "-> [atuin] install configuration..."

rm -rf "$HOME/.config/atuin"
ln -sfn "$root_directory/atuin/config" "$HOME/.config/atuin"
