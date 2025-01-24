command -v mise > /dev/null 2>&1 && eval "$(mise activate zsh)"
if command -v fzf > /dev/null 2>&1; then
  eval "$(fzf --zsh)"
  function ghq-fzf_change_directory() {
    local src=$(ghq list | fzf --preview "eza -l -g -a --icons $(ghq root)/{} | tail -n+4 | awk '{print \$6\"/\"\$8\" \"\$9 \" \" \$10}'")
    if [ -n "$src" ]; then
      BUFFER="cd $(ghq root)/$src"
      zle accept-line
    fi
    zle -R -c
  }
  zle -N ghq-fzf_change_directory
  bindkey '^f' ghq-fzf_change_directory
fi
command -v docker > /dev/null 2>&1 && source <(docker completion zsh)
command -v starship > /dev/null 2>&1 && eval "$(starship init zsh)"
