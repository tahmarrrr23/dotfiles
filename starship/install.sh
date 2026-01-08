#!/bin/sh
set -eu

root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "[starship] configure"

rm -rf "$HOME/.config/starship.toml"
ln -sfn "$root_directory/starship/config/starship.toml" "$HOME/.config/starship.toml"
