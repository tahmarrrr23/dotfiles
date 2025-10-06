[ -d "$HOMEBREW_CELLAR/starship" ] || return

export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"
