if ! command -v fzf >/dev/null 2>&1; then
  return
fi

source <(fzf --zsh)
