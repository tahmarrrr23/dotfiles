if [[ -x ${commands[fzf]} ]]; then
  zstyle ':completion:*' menu no
else
  disable-fzf-tab
fi
