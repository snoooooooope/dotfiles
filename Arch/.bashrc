#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Shopt
shopt -s cdspell; # Autocorrects typos in path

# Custom Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ..="cd .."
alias UU="eos-update"
alias uu="eos-update"
alias UM="eos-rankmirrors"
alias um="eos-rankmirrors"
alias clean="yay -Yc && yay -Scc"
alias hx="helix"
alias lg="lazygit"
alias hp="wpctl set-default 78"
alias sp="wpctl set-default 52"

# Terminal name
PS1='\[\e[97;1m\]\u\[\e[0m\] \[\e[97;1m\]-> \[\e[0m\] \[\e[97;1m\]\w\[\e[0m\] '

# Func_vehicle is a god given right
tre() { command tre "$@" -e && source "/tmp/tre_aliases_$USER" 2>/dev/null; }

# PATHS
export PATH=$PATH:~/build/tre/target/release/
export PATH=$PATH:~/build/grim/build/
# Env
. "$HOME/.cargo/env"
eval "$(starship init bash)"
eval "$(lua /usr/share/z.lua/z.lua --init bash enhanced once fzf)"

# Defaults
export EDITOR=helix;
export TERMINAL=alacritty;
export TERM=alacritty;
export VISUAL=helix;
