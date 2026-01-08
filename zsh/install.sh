#!/bin/sh
root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "-> [zsh] install zshrc..."

ln -sfn "$root_directory/zsh/config/zshrc" "$HOME/.zshrc"
