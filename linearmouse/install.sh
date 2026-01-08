#!/bin/sh
root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "-> [linearmouse] install configuration..."

rm -rf "$HOME/.config/linearmouse"
ln -sfn "$root_directory/linearmouse/config" "$HOME/.config/linearmouse"
