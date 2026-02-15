[[ ! -x ${commands[fd]} ]] && return

alias fd-dsstore='fd --unrestricted --type file "^\.DS_Store$" ~/ --exclude Library'

