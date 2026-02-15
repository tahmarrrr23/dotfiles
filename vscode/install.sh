#!/bin/sh

set -eu

config_src="$(cd "$(dirname "$0")" && pwd)/config/settings.json"
config_dst="$HOME/Library/Application Support/Code/User/settings.json"

rm -rf "$config_dst" && ln -sfn "$config_src" "$config_dst"
