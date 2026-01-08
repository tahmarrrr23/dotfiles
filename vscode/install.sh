#!/bin/sh
set -eu

root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "[vscode] configure"

rm -rf "$HOME/Library/Application\ Support/Code/User/settings.json"
ln -sfn "$root_directory/vscode/config/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
