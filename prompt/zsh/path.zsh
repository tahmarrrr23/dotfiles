if [ -d "$HOMEBREW_PREFIX/Cellar/curl" ];then
  export PATH="$HOMEBREW_PREFIX/opt/curl/bin:$PATH"
fi

if [ -d "$HOMEBREW_PREFIX/Cellar/gnu-tar" ];then
  export PATH="$HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin:$PATH"
fi
