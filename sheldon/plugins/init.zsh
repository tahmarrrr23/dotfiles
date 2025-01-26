if command -v mise > /dev/null 2>&1; then
  eval "$(mise activate zsh)"
fi

if command -v fzf > /dev/null 2>&1; then
  eval "$(fzf --zsh)"
  bindkey "^[[A" fzf-history-widget
  if command -v ghq > /dev/null 2>&1; then
    function fzf-ghq() {
      local target_dir=$(ghq list -p | fzf --query="$LBUFFER")
      if [ -n "$target_dir" ]; then
        BUFFER="cd ${target_dir}"
        zle accept-line
      fi
      zle reset-prompt
    }
    zle -N fzf-ghq
    bindkey "^g" fzf-ghq
  fi
fi

if command -v eza > /dev/null 2>&1; then
  alias ll="eza -l --icons"
  alias la="eza -la --icons"
fi

if command -v starship > /dev/null 2>&1; then
  eval "$(starship init zsh)"
fi
