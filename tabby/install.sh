#!/bin/bash
set -eu
cd "$(dirname "$0")"
[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

ln -nfs "$PWD/config/config.yaml" "$HOME/Library/Application Support/tabby/config.yaml"
