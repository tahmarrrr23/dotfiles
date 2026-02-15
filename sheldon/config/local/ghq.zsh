[[ ! -x ${commands[ghq]} ]] && return

export GHQ_ROOT="$HOME/Workspace/dev/git"

[[ ! -x ${commands[fzf]} ]] && return

function fzf-ghq() {
  local src=$(ghq list | fzf --preview "ls -la $(ghq root)/{}")
  if [ -n "$src" ]; then
    BUFFER="cd $(ghq root)/$src"
    zle accept-line
  fi
  zle -R -c
}

zle -N fzf-ghq
bindkey "^g" fzf-ghq
