alias relogin="exec $SHELL -l"
alias dsstore="find $HOME \( -path \"$HOME/Library\" -o -path \"$HOME/.Trash\" \) -prune -o -type f -name '.DS_Store' -print"

if command -v eza > /dev/null 2>&1; then
  alias ls="eza -1"
  alias ll="eza -l --icons"
  alias la="eza -la --icons"
else
  alias ls="ls -1"
  alias ll="ls -l"
  alias la="ls -la"
fi
