if [ -d "$HOMEBREW_PREFIX/Cellar/curl" ]; then
  export PATH="$HOMEBREW_REPOSITORY/opt/curl/bin:$PATH"
fi

if [ -d "$HOMEBREW_PREFIX/Cellar/gnu-tar" ]; then
  export PATH="$HOMEBREW_REPOSITORY/opt/gnu-tar/libexec/gnubin:$PATH"
fi

if [ -d "$HOMEBREW_PREFIX/Cellar/coreutils" ]; then
  export PATH="$HOMEBREW_REPOSITORY/opt/coreutils/libexec/gnubin:$PATH"
fi

if [ -d "$HOMEBREW_PREFIX/Caskroom/rancher" ]; then
  export PATH="$HOME/.rd/bin:$PATH"
fi
