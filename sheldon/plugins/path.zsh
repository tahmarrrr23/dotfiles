if [ -d "$HOMEBREW_PREFIX/Cellar/curl" ]; then
  export PATH="$HOMEBREW_REPOSITORY/opt/curl/bin:$PATH"
fi

if [ -d "$HOMEBREW_PREFIX/Caskroom/rancher" ]; then
  export PATH="$HOME/.rd/bin:$PATH"
fi
