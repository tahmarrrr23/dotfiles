if ! command -v fd >/dev/null 2>&1; then
  return
fi

alias ds_store="fd -H '^\.DS_Store$' -tf $HOME"
alias ds_store-remove="fd -H '^\.DS_Store$' -tf $HOME -x rm -v"
