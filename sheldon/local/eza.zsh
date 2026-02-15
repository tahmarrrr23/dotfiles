[[ ! -x ${commands[eza]} ]] && return

alias ls="eza --group-directories-first --icons --sort=Name"
alias ll="eza --group-directories-first --icons --sort=Name -lgb --time-style long-iso"
alias la="eza --group-directories-first --icons --sort=Name -lgba --time-style long-iso"
