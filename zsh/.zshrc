# path
## homebrew
[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"
## starship
[ -f "/opt/homebrew/bin/starship" ] && eval "$(starship init zsh)"
## asdf
[ -f "/opt/homebrew/bin/asdf" ] && source "/opt/homebrew/opt/asdf/libexec/asdf.sh"
## gnu-tar
[ -d "/opt/homebrew/opt/gnu-tar" ] && export PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:$PATH"
## fzf
[ -f "$HOME/.fzf.zsh" ] && source "$HOME/.fzf.zsh"
## zinit
[ -d "$HOME/.local/share/zinit/zinit.git" ] && source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"

# alias
alias relogin="exec $SHELL -l"
alias history="history -i"
if [ -f "/opt/homebrew/bin/exa" ]; then
  alias ls="exa -1 --icons --git"
  alias ll="exa -l --icons --git"
  alias la="exa -la --icons --git"
else
  alias ls="ls -1 --color=auto"
  alias ll="ls -l"
  alias la="ls -la"
fi

# zinit
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting
zinit snippet PZTM::history/init.zsh
zinit snippet PZTM::completion/init.zsh

# history
setopt HIST_NO_STORE
setopt INC_APPEND_HISTORY
setopt HIST_REDUCE_BLANKS
unsetopt HIST_IGNORE_ALL_DUPS
export HISTSIZE=100000
export SAVEHIST=100000
HISTORY_IGNORE="(cd|la*|ll*|ls*|rm*|relogin)"
zshaddhistory() {
  emulate -L zsh
  [[ ${1%%$'\n'} != ${~HISTORY_IGNORE} ]]
}

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

autoload -Uz compinit
compinit
