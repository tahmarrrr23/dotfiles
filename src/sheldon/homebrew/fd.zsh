[ -d "$HOMEBREW_CELLAR/fd" ] || return

alias fd-ds_store="fd -u -tf -E 'Library' -g '\.DS_Store' /"
