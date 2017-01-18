# ~/.bashrc: executed by bash(1) for non-login shells.
# Itso's bashrc

### Set prompt settings
PS1='\[\033[01;37m\][\[\033[00;36m\]\u\[\033[00m\]@\[\033[01;36m\]\h\[\033[00m\]:\[\033[00;34m\]\w\[\033[00m\]\[\033[01;37m\]]\[\033[00m\]\$ '

### Set screen window title
case "$TERM" in
screen)
  PROMPT_COMMAND='echo -ne "\033k`hostname -s`\033\\"'
  ;;
esac

### Permissions
umask 0022

### Typocatcher
alias grpe='grep'
alias gerp='grep'
alias clera='clear'
alias clar='clear'
alias clesr='clear'
alias claer='clear'
alias clea='clear'
alias cler='clear'
alias vmi='vim'
alias ssg='ssh'
alias ssj='ssh'

### Prompt before rm/cp/mv
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

### Because life is better in color
if [[ `uname` =~ Linux ]]; then
    export COLOR='--color=auto'
    eval "`dircolors`"
    alias ls='ls $COLOR'
    alias l='ls $COLOR -lA'
    alias grep='grep $COLOR'
    alias fgrep='fgrep $COLOR'
    alias egrep='egrep $COLOR'
elif [[ `uname` =~ Darwin ]]; then
    export LSCOLORS="gxfxcxdxbxegedabagacad"
fi

### Because the NSA needs to know exactly when I did what
export HISTTIMEFORMAT="%m-%d %R "
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=100000
HISTFILESIZE=10000
shopt -s histappend

### Window size check after each command
shopt -s checkwinsize

### Aliases
alias sudoing='echo "source ~hslavchev/.bashrc"; sudo'
alias root='sudoing su - root'
alias cl='clear'
alias jb='ssh -A jumpbox'
alias db='rlwrap sqlplus @/home/hslavchev/.sqlplusrc'
alias vmdesktop='ssh -L 3389:itzo.org:3389 jumpbox'
alias rdesktop='sudo rdesktop -u hslavchev -g 1280x900 localhost:3389'
alias xdesktop="ssh -X -f -N -l hslavchev -L 5006:destination:22 jumpbox"
alias topmemusage='ps aux | sort -nrk 4 | head'
alias keyon='ssh-add -t 10800'
alias keyoff='ssh-add -D'
alias netlisten='netstat -tulanep | grep LISTEN'
alias df='df -P | column -t'
alias dfh='\df -hP | column -t'
alias dushmg='du -sh * 2>/dev/null | egrep "M|G"'
alias epoch='date +%s'
alias datetime='date +%Y%m%d%H%M'
alias gp='git pull'
alias repostatus='CDIR=`pwd`; for i in `ls ~/git/`; do echo "# ${i}:"; cd ~/git/$i ; git status -sb ; echo; done; cd $CDIR'
alias gss='git status -s'
alias gsb='git status -sb'
alias gst='git status'
