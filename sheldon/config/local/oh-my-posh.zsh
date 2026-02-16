[[ ! -x ${commands[oh-my-posh]} ]] && return

theme="avit"
eval "$(oh-my-posh init zsh --config "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/$theme.omp.json")"
