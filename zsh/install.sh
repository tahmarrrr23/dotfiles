#!/bin/sh

set -eu

config_src="$(cd "$(dirname "$0")" && pwd)/config/zshrc"
config_dst="$HOME/.zshrc"

rm -rf "$config_dst" && ln -sfn "$config_src" "$config_dst"
