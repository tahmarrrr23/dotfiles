alias relogin="exec $SHELL -l"

if [ -d "$HOMEBREW_PREFIX/Cellar/eza" ];then
  alias ls="eza -1"
  alias ll="eza -l --icons"
  alias la="eza -la --icons"
else
  alias ls="ls -1 --color=auto"
  alias ll="ls -l"
  alias la="ls -la"
fi

if [ -d "$HOMEBREW_PREFIX/Cellar/bottom" ];then
  alias top="btm"
fi
