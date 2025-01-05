alias relogin="exec $SHELL -l"

if command -v eza > /dev/null 2>&1; then
  alias ls="eza -1"
  alias ll="eza -l --icons"
  alias la="eza -la --icons"
else
  alias ls="ls -1"
  alias ll="ls -l"
  alias la="ls -la"
fi
