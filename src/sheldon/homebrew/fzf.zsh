[ -d "$HOMEBREW_CELLAR/fzf" ] || return

source <(fzf --zsh)

if [ -d "$HOMEBREW_CELLAR/ghq" ]; then
  fzf-ghq() {
    local src=$(ghq list | fzf)
    if [ -n "$src" ]; then
      BUFFER="cd $(ghq root)/$src"
      zle accept-line
    fi
    zle -R -c
  }
  zle -N fzf-ghq
  bindkey '^g' fzf-ghq
fi
