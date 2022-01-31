# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#Generic
alias sudo='doas'
alias pacman='doas pacman'
alias ls='ls -a --color=auto'
alias reboot='systemctl reboot -i'
alias vim='nvim'
alias cat='bat'

#Git
alias ginit='git init'
alias gadd='git add'
alias gstat='git status | grep 'modified''
alias gcommit='git commit -m'

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
