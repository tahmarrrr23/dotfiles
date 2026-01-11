#!/bin/sh
set -eu

root_directory="$(cd "$(dirname "$0")/.." && pwd)"
target_shell="/opt/homebrew/bin/zsh"

add_shell() {
  if ! grep -qx "$1" /etc/shells; then
    echo "$1" | sudo tee -a /etc/shells >/dev/null
  fi
}

remove_shell() {
  if grep -qx "$1" /etc/shells; then
    sudo sed -i.bak "\|^$1$|d" /etc/shells
  fi
}

change_shell() {
  if [ "$SHELL" != "$1" ]; then
    chsh -s "$1"
    exec $1 -l
  fi
}

echo "[zsh] install"

if [ -x "$target_shell" ]; then
  add_shell "$target_shell"
  change_shell "$target_shell"
else
  remove_shell "$target_shell"
  change_shell "/bin/zsh"
fi

echo "[zsh] configure"

rm -rf "$HOME/.zshrc"
ln -sfn "$root_directory/zsh/config/zshrc" "$HOME/.zshrc"
