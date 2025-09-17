#!/bin/bash

set -u

if [ ! -f "/opt/homebrew/bin/brew" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "eval \"\$(/opt/homebrew/bin/brew shellenv)\"" > "$HOME/.zprofile"

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
  if [ -e "$localized_file" ]; then
    rm "$localized_file"
  fi
done
