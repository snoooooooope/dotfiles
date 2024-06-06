#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Hyprland
if [ "$(tty)" = "/dev/tty1" ];then
    exec Hyprland
fi

# Zsh plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
zstyle ":completion:*:commands" rehash 1

#setopt
setopt APPEND_HISTORY;
setopt EXTENDED_HISTORY;
autoload -Uz compinit
compinit

# Custom Aliases
alias ls="ls --color=auto"
alias rg="rg --color=auto"
alias grep="grep --color=auto"
alias mirrorupdate="sudo systemctl start reflector.service"
alias reflectorstatus="journalctl -u reflector.service -b"
alias ..="cd .."
alias clean="paru -Scc"
alias hx="helix"
alias hp="wpctl set-default 78"
alias sp="wpctl set-default 51"
alias depcheck="pacman -Qdt"
alias depclean="sudo pacman -Qdtq | sudo pacman -Rns -"
alias pakin="pacman -Q | wc -l"
alias font-family="fc-list : family | sort | uniq"

# Env
eval "$(starship init zsh)"
eval "$(lua /usr/share/z.lua/z.lua --init zsh enhanced once fzf)"

# Paths
# export PATH=$PATH:~/Build/nb

# Defaults
export EDITOR=helix;
export TERMINAL=kitty;
export TERM=kitty;
export VISUAL=helix;
export MANPAGER="sh -c 'col -bx | bat -l man -p'";
export MANROFFOPT="-c";
