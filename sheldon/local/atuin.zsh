if ! command -v atuin >/dev/null 2>&1; then
  return
fi

eval "$(atuin init zsh)"
