if [ -d "$HOMEBREW_PREFIX/Cellar/mise" ];then
  eval "$(mise activate zsh)"
fi

if [ -d "$HOMEBREW_PREFIX/opt/starship" ];then
  eval "$(starship init zsh)"
fi
