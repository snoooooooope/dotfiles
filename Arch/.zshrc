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
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ..="cd .."
alias updatemirrors="eos-rankmirrors"
alias clean="paru -Scc"
alias hx="helix"
alias hp="wpctl set-default 78"
alias sp="wpctl set-default 52"

# PATHS

# Env
eval "$(starship init zsh)"
eval "$(lua /usr/share/z.lua/z.lua --init zsh enhanced once fzf)"

# Defaults
export EDITOR=helix;
export TERMINAL=alacritty;
export TERM=alacritty;
export VISUAL=helix;
export MANPAGER="sh -c 'col -bx | bat -l man -p'";
export MANROFFOPT="-c";
