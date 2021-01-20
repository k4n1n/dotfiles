# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
autoload -U colors && colors

compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.history
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install

# Prompt
PS1='%F{34}╔ %T%F{34} %M ‡ %n %F{34}%~
%F{40}%B╙••• %b%F{46}'

#inicio
bindkey "^[[7~"	beginning-of-line
bindkey "^[[7$" beginning-of-line
#suprimir
bindkey "^[[3~" delete-char
bindkey "^[[3$" delete-char

 

