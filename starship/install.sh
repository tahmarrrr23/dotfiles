#!/bin/sh

set -eu

config_src="$(cd "$(dirname "$0")" && pwd)/config/starship.toml"
config_dst="$HOME/.config/starship.toml"

rm -rf "$config_dst" && ln -sfn "$config_src" "$config_dst"
