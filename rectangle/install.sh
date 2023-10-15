#!/bin/bash
set -eu
cd "$(dirname "$0")"
[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"
