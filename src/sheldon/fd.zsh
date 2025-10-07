if ! command -v fd >/dev/null 2>&1; then
  return
fi

alias ds_store="fd -HI -t f '.DS_Store'"
alias ds_store-remove="fd -HI -t f '.DS_Store' -x rm -iv"
