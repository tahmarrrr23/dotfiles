#!/bin/bash
set -eu

echo "[bootstrap] install homebrew"

if [ ! -f "/opt/homebrew/bin/brew" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "-> already installed"
fi

echo "eval \"\$(/opt/homebrew/bin/brew shellenv)\"" > "$HOME/.zprofile"

echo "[bootstrap] remove .localized files"

localized_dirs=(
  "$HOME/Applications"
  "$HOME/Documents"
  "$HOME/Downloads"
  "$HOME/Desktop"
  "$HOME/Public"
  "$HOME/Pictures"
  "$HOME/Music"
  "$HOME/Movies"
  "$HOME/Library"
  "/Applications"
)

for dir in "${localized_dirs[@]}"; do
  localized_file="$dir/.localized"
  echo "-> removing $localized_file"
  if [ -e "$localized_file" ]; then
    rm -rf "$localized_file"
  fi
done
