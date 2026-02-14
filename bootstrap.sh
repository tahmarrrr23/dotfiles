#!/bin/bash
set -eu

log() { printf "\033[1;34m==>\033[0m \033[1m%s\033[0m\n" "$1"; }
ok() { printf "  \033[32m✔\033[0m %s\n" "$1"; }
skip() { printf "  \033[33m-\033[0m %s\n" "$1"; }

log "Install Homebrew"

if [[ -f /opt/homebrew/bin/brew ]]; then
	skip "already installed"
else
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	ok "installed"
fi

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >"$HOME/.zprofile"

log "Remove .localized files"

declare -a dirs
dirs=(
	"$HOME"/{Applications,Documents,Downloads,Desktop,Public,Pictures,Music,Movies,Library}
	/Applications
)

for dir in "${dirs[@]}"; do
	target="$dir/.localized"
	if [[ -e "$target" ]]; then
		rm -f "$target"
		ok "removed $target"
	else
		skip "not found $target"
	fi
done

log "Create config directory"

if [[ -d "$HOME/.config" ]]; then
	skip "already exists"
else
	mkdir "$HOME/.config"
	ok "created"
fi
