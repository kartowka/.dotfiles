#[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session;}

# Flex on ubuntu users
[[ -f ~/.config/zsh/aliases.zsh ]] && source ~/.config/zsh/aliases.zsh
[[ -f ~/.config/zsh/functions.zsh ]] && source ~/.config/zsh/functions.zsh
[[ -f ~/.config/zsh/starship.zsh ]] && source ~/.config/zsh/starship.zsh
[[ -f ~/.config/zsh/plugins.zsh ]] && source ~/.config/zsh/plugins.zsh
[[ -f ~/.config/zsh/goto.zsh ]] && source ~/.config/zsh/goto.zsh
# Load Starship
eval "$(starship init zsh)"

# Load Direnv
#eval "$(direnv hook zsh)"# ~/.zshrc

export PATH="/usr/local/sbin:$PATH"
# run neofetch if present on machine
if [ -x "$(command -v neofetch)" ]; then
    neofetch
fi
