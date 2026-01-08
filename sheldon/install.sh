#!/bin/sh
root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "-> [sheldon] install configuration..."

ln -sfn "$root_directory/sheldon/config" "$HOME/.config/sheldon"
