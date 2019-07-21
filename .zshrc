# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=4000
SAVEHIST=4000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jroma/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
#
# Add XDG_HOME to env for fontconfig
export XDG_HOME=/home/jroma
export XDG_CONFIG_HOME=$XDG_HOME/.config
export FC_DEBUG=1024
