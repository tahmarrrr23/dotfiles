#!/bin/sh
set -eu

root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "[wezterm] configure"

rm -rf "$HOME/.config/wezterm"
ln -sfn "$root_directory/wezterm/config" "$HOME/.config/wezterm"
