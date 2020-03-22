# Command history
HISTFILE=~/.histfile
HISTSIZE=4000
SAVEHIST=4000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# Changing directories
setopt auto_cd
setopt auto_pushd
unsetopt pushd_ignore_dups
setopt pushdminus

bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jroma/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

zmodload -a colors
zmodload -a autocomplete
zmodload -a complist

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

alias ls="ls --color=auto"
alias mcs="ssh u1671-xxfh6bmqfppq@thechickensoup.eu -p 18765"
alias suspend="systemctl suspend"

path+=$(yarn global bin)

# Rehash hook for pacman
zshcache_time="$(date +%s%N)"
autoload -Uz add-zsh-hook

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

add-zsh-hook -Uz precmd rehash_precmd

# Antibody setup & plugins
source <(antibody init)
antibody bundle < ~/.config/.zsh_plugins.txt

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
