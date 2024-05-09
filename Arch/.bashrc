#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Custom Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ..="cd .."



# Terminal name
PS1='[\u@\h \W]\$ '






# Env
. "$HOME/.cargo/env"
