#!/bin/sh
set -eu

root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "[atuin] configure"

rm -rf "$HOME/.config/atuin"
ln -sfn "$root_directory/atuin/config" "$HOME/.config/atuin"
