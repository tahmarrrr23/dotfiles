#!/bin/sh
root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "-> [mise] install configuration..."

rm -rf "$HOME/.config/mise"
ln -sfn "$root_directory/mise/config" "$HOME/.config/mise"
