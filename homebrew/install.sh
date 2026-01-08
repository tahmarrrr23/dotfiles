#!/bin/sh
root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "-> [homebrew] install"

brew bundle install -f --file="$root_directory/homebrew/Brewfile"
