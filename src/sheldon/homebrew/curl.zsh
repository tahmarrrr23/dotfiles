[ -d "$HOMEBREW_CELLAR/curl" ] || return

export PATH="$HOMEBREW_PREFIX/opt/curl/bin:$PATH"
