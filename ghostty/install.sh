#!/bin/sh
set -eu

root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "[ghostty] configure"

rm -rf "$HOME/.config/ghostty"
ln -sfn "$root_directory/ghostty/config" "$HOME/.config/ghostty"
