if [ -d "$HOMEBREW_CELLAR/curl" ]; then
  export PATH="$HOMEBREW_REPOSITORY/opt/curl/bin:$PATH"
fi

if [ -d "$HOMEBREW_CELLAR/gnu-tar" ]; then
  export PATH="$HOMEBREW_REPOSITORY/opt/gnu-tar/libexec/gnubin:$PATH"
fi

if [ -d "$HOMEBREW_CELLAR/coreutils" ]; then
  export PATH="$HOMEBREW_REPOSITORY/opt/coreutils/libexec/gnubin:$PATH"
fi

if [ -d "$HOMEBREW_CELLAR/rancher" ]; then
  export PATH="$HOME/.rd/bin:$PATH"
fi
