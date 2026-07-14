#!/bin/bash
set -eu

cd "$(dirname "$0")"

link_config() {
  local source=$1
  local target=$2
  rm -rf "$target"
  ln -sfn "$PWD/$source" "$target"
  printf "[OK] linked %s -> %s\n" "$target" "$source"
}

link_config "zsh/zshrc" "$HOME/.zshrc"
link_config "vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
link_config "sheldon" "$HOME/.config/sheldon"
link_config "ghostty" "$HOME/.config/ghostty"
link_config "linearmouse" "$HOME/.config/linearmouse"
link_config "mise" "$HOME/.config/mise"
link_config "atuin" "$HOME/.config/atuin"
