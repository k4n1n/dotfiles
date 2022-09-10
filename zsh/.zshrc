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
#PS1='%F{34}╔ %T%F{34} %M ‡ %n %F{34}%~
#%F{40}%B╙••• %b%F{46}'

PROMPT="%B%F{202}┌─[%T]%f%k%F{202} └(%m%f%k%B%F{202} § %f%k%F{202}%n)┐ %f%k%B%F{202}%~%f%k%b
%B%F{202}└──•%k %F{202}$%f%b %F{196}"


#inicio
bindkey "^[[7~"	beginning-of-line
bindkey "^[[7$" beginning-of-line
#suprimir
bindkey "^[[3~" delete-char
bindkey "^[[3$" delete-char

#ls colors
eval $(dircolors ~/.dircolors)

# alias
alias ls='ls --color=auto'

# LS colors
LS_COLORS='di=1;1;1;40:ln=3:so=4:pi=4:ex=1:bd=31;40:cd=31;40:su=3;1;20;40:sg=3;1;20;40:tw=3:ow=1;1;1;40'
export LS_COLORS

# QT5 theme
export QT_STYLE_OVERRIDE="kvantum"
export QT_QPA_PLATFORMTHEME="qt5ct"
