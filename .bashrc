#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias sudo='doas'
alias ls='ls -a --color=auto'

PS1='[\u@\h \W]\$ '
