[ -d "$HOMEBREW_CELLAR/eza" ] || return

alias ls="eza --icons"
alias ll="eza -l --icons"
alias la="eza -la --icons"
