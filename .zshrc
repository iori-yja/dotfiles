# Created by newuser for 4.3.10
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data
bindkey -v
setopt auto_cd
setopt auto_pushd
setopt list_packed

export LANG=en_US.UTF8
case ${UID} in
0)
    RPROMPT="%{[1m%}%/%{[m%} "
    PROMPT="%T%{[1m%}%{[31m%}%%%{[m%} "
    PROMPT2="%{[5m%}%_%%%{[m%} "
    SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;

*)
    RPROMPT="%/%{[m%} "
    PROMPT="%T%{[1m%}%{[34m%}%%%{[m%} "
    PROMPT2="%{[5m%}%_%%%{[m%} "
    SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
esac

setopt nolistbeep
setopt correct
autoload -U compinit
compinit

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -l'
alias lla='ls -al'
alias lat='ls -tal'
alias lt='ls -tl'
alias la='ls -A'
alias l='ls -CF'
alias tm='tmux -2'
alias llss='ls -l |less'

alias bye='pm-suspend;xlock'
alias pastebin="curl -F 'sprunge=<-' http://sprunge.us"

alias u='cd ..'
alias uu='cd ../../'
alias uuu='cd ../../../'

