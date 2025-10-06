#!/bin/bash

set -u

step_counter=0

log() {
  printf '%s\n' "$*"
}

log_indent() {
  log "-> $*"
}

log_step() {
  step_counter=$((step_counter + 1))
  log "Step ${step_counter}: $*"
}

log_step "Install Homebrew"
if [ ! -f "/opt/homebrew/bin/brew" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  log_indent "Already installed"
fi
echo "eval \"\$(/opt/homebrew/bin/brew shellenv)\"" > "$HOME/.zprofile"
log_indent "Environment in .zprofile"

log_step "Remove '.localized' files"
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
  log_indent "Removing $localized_file"
  if [ -e "$localized_file" ]; then
    rm "$localized_file"
  fi
done
