if ! command -v eza >/dev/null 2>&1; then
  return
fi

alias ls="eza --group-directories-first --icons"
alias ll="eza -lgb --time-style long-iso --group-directories-first --icons"
alias la="eza -lgba --time-style long-iso --group-directories-first --icons"
