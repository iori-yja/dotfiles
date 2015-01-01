# Created by newuser for 4.3.10
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
stty stop undef
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data
bindkey -v
setopt auto_cd
setopt auto_pushd
setopt list_packed
setopt extended_history

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
alias h='htop'

alias bye='pm-suspend;xlock'
alias pastebin="curl -F 'sprunge=<-' http://sprunge.us"

alias u='cd ..'
alias uu='cd ../../'
alias uuu='cd ../../../'

alias quartus='~/altera/13.1/quartus/bin/quartus  --64bit'

alias synccc='sync && echo "Allah akbar\n" && sync && echo "ashhadu an la ilaha illallaah\n" && sync && echo "wa ašhadu anna Muhammadan Rasùl Allàh" '
alias univproxy='ssh -f -N -D 8080 s1211402@abelia01.coins.tsukuba.ac.jp'

export PATH=/opt/sparc-elf/bin:$PATH
export PATH=/home/iorivur/arm-newlib/bin:$PATH
export PATH=./.cabal/bin:$PATH:/home/iorivur/.local/bin:/opt/Xilinx/12.2/ISE_DS/ISE/bin/lin64:/home/iorivur/.gem/ruby/2.0.0/bin:/opt/Xilinx/12.2/ISE_DS/EDK/bin/lin64:/opt/or1k-toolchain/bin:/home/iorivur/src/verilog/orpsocv2/sw/utils:/home/iorivur/build/go/bin:~/altera/13.1/quartus/bin:~/altera/13.1/modelsim_ase/bin

export PATH=/home/iorivur/build/gcc-arm-none-eabi-4_8-2014q2/bin:$PATH
export PATH=~/.bin:$PATH

export LD_LIBRARY_PATH=/home/iorivur/altera/13.1/lib
export GOROOT=$HOME/build/go
export GOPATH=$HOME/build/go/bin

