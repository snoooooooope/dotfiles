# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.

# Terminal name
PS1='\[\e[97;1m\]\u\[\e[0m\] \[\e[97;1m\]-> \[\e[0m\] \[\e[97;1m\]\w\[\e[0m\] '

# Custom Aliases
alias ..="cd .."
alias hx="helix"
alias uu="sudo zypper dup"
alias UU="sudo zypper dup"

# Env
eval "$(zoxide init bash)"
eval "$(starship init bash)"

# Defaults
export EDITOR=helix;
export TERMINAL=alacritty;
export TERM=alacritty;

# Tests
test -s ~/.alias && . ~/.alias || true
