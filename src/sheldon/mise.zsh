if ! command -v mise >/dev/null 2>&1; then
  return
fi

eval "$(mise activate zsh)"
