#!/bin/bash
set -eu
cd "$(dirname "$0")"
[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d "$ZINIT_HOME" ] && mkdir -p "$(dirname "$ZINIT_HOME")"
[ ! -d "$ZINIT_HOME"/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

ln -nfs "$PWD/config/zshrc" "$HOME/.zshrc"
