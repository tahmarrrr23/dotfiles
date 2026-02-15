#!/bin/sh

set -eu

config_src="$(cd "$(dirname "$0")" && pwd)/config/config.yaml"
config_dst="$HOME/Library/Application Support/tabby/config.yaml"

rm -rf "$config_dst" && ln -sfn "$config_src" "$config_dst"
