#!/bin/sh
set -eu

root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "[mise] configure"

rm -rf "$HOME/.config/mise"
ln -sfn "$root_directory/mise/config" "$HOME/.config/mise"
