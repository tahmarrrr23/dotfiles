#!/bin/sh

set -eu

config_src="$(cd "$(dirname "$0")" && pwd)/config"
config_dst="$HOME/.config/sheldon"

rm -rf "$config_dst" && ln -sfn "$config_src" "$config_dst"
