# premise
[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

# path
[ -d "$HOMEBREW_PREFIX/opt/starship" ] && eval "$(starship init zsh)"
[ -d "$HOMEBREW_PREFIX/opt/asdf" ] && source "$HOMEBREW_PREFIX/opt/asdf/libexec/asdf.sh"
[ -d "$HOMEBREW_PREFIX/opt/gnu-tar" ] && export PATH="$HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin:$PATH"
[ -f "$HOME/.fzf.zsh" ] && source "$HOME/.fzf.zsh"
[ -d "$HOME/.local/share/zinit/zinit.git" ] && source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
[ -d "$HOME/.rb/bin" ] && export PATH="$HOME/.rb/bin:$PATH"

# alias
alias relogin="exec $SHELL -l"
alias history="history -i"
if [ -d "$HOMEBREW_PREFIX/opt/exa" ]; then
  alias ls="exa -1"
  alias ll="exa -l --icons"
  alias la="exa -la --icons"
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
zinit wait lucid is-snippet as"completion" for \
  OMZP::docker/completions/_docker \
  OMZP::docker-compose/_docker-compose
zinit cdclear -q

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
