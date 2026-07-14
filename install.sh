#!/bin/bash
set -eu

cd "$(dirname "$0")"

# zsh
rm -rf "$HOME/.zshrc"
ln -sfn "$PWD/zsh/zshrc" "$HOME/.zshrc"

# vscode
rm -rf "$HOME/Library/Application Support/Code/User/settings.json"
ln -sfn "$PWD/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

# sheldon
rm -rf "$HOME/.config/sheldon"
ln -sfn "$PWD"/sheldon "$HOME"/.config/sheldon

# ghostty
rm -rf "$HOME/.config/ghostty"
ln -sfn "$PWD/ghostty" "$HOME/.config/ghostty"

# linearmouse
rm -rf "$HOME/.config/linearmouse"
ln -sfn "$PWD/linearmouse" "$HOME/.config/linearmouse"

# mise
rm -rf "$HOME/.config/mise"
ln -sfn "$PWD/mise" "$HOME/.config/mise"

# atuin
rm -rf "$HOME/.config/atuin"
ln -sfn "$PWD/atuin" "$HOME/.config/atuin"
