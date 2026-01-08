#!/bin/sh
set -eu

root_directory="$(cd "$(dirname "$0")/.." && pwd)"

echo "[tabby] configure"

rm -rf "$HOME/Library/Application Support/tabby/config.yaml"
ln -sfn "$root_directory/tabby/config/config.yaml" "$HOME/Library/Application Support/tabby/config.yaml"
