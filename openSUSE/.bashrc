# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.

#Shopt
shopt -s cdspell; # Autocorrects typos in path
shopt -s autocd; # Removes the need of CD in current directory
shopt -s histappend; # Append to the history file, don't overwrite it

# Custom Aliases
alias ..="cd .."
alias hx="helix"
alias su="sudo zypper dup"
alias SU="sudo zypper dup"
alias pu="sudo zypper up"
alias PU="sudo zypper up"
alias list-updates="sudo zypper lp && sudo zypper lu"
alias clean="sudo zypper clean"

# Env
eval "$(zoxide init bash)"
eval "$(starship init bash)"

# Defaults
export EDITOR=helix;
export TERMINAL=alacritty;
export TERM=alacritty;

# Tests
test -s ~/.alias && . ~/.alias || true
