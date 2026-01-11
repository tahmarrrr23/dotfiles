#!/bin/sh
set -eu

root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "[hammerspoon] configure"

rm -rf "$HOME/.hammerspoon/init.lua"
ln -sfn "$root_directory/hammerspoon/config/init.lua" "$HOME/.hammerspoon/init.lua"
