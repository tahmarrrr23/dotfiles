#!/bin/sh
set -eu

root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "[zsh] configure"

rm -rf "$HOME/.zshrc"
ln -sfn "$root_directory/zsh/config/zshrc" "$HOME/.zshrc"
