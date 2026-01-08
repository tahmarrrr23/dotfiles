#!/bin/sh
set -eu

root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "[sheldon] configure"

rm -rf "$HOME/.config/sheldon"
ln -sfn "$root_directory/sheldon/config" "$HOME/.config/sheldon"
