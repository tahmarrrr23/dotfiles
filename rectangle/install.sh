#!/bin/sh

set -eu

config_src="$(cd "$(dirname "$0")" && pwd)/config/RectangleConfig.json"
config_dst="$HOME/Library/Application Support/Rectangle/RectangleConfig.json"

rm -rf "$config_dst" && ln -sfn "$config_src" "$config_dst"
