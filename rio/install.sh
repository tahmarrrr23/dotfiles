#!/bin/sh
set -eu

root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "[rio] configure"

rm -rf "$HOME/.config/rio"
ln -sfn "$root_directory/rio/config" "$HOME/.config/rio"
