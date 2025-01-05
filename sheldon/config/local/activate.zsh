[ -f "/opt/homebrew/bin/mise" ] && eval "$(mise activate zsh)"
[ -f "/opt/homebrew/bin/fzf" ] && eval "$(fzf --zsh)"
[ -f "$HOME/.rd/bin/docker" ] && source <(docker completion zsh)
[ -f "/opt/homebrew/bin/starship" ] && eval "$(starship init zsh)"
