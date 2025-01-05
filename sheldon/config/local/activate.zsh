command -v mise > /dev/null 2>&1 && eval "$(mise activate zsh)"
command -v fzf > /dev/null 2>&1 && eval "$(fzf --zsh)"
command -v docker > /dev/null 2>&1 && source <(docker completion zsh)
command -v starship > /dev/null 2>&1 && eval "$(starship init zsh)"
