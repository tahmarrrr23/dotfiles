autoload -U compinit && compinit

if command -v docker &> /dev/null; then
  source <(docker completion zsh)
fi

if command -v pip &> /dev/null; then
  source <(pip completion --zsh)
fi

if command -v uv &> /dev/null; then
  source <(uv generate-shell-completion zsh)
fi

# if command -v pnpm &> /dev/null; then
#   source <(pnpm completion zsh)
# fi
