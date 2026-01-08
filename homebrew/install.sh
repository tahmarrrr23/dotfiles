#!/bin/sh
root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "-> [homebrew] install packages..."

brew bundle install -f --file="$root_directory/homebrew/Brewfile"
