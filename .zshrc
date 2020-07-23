export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/workspace/devops/tools:$PATH

export ZSH="/Users/is/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Terminal colors
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcac
export LS_COLORS="di=1;34:ln=1;36:so=1;31:pi=1;33:ex=1;32:bd=1;34;46:cd=1;34;43:su=0;41:sg=0;46:tw=0;42:ow=30;42"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}   # zsh to use the same colors as ls

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then eval "$(pyenv init -)"; fi
pyenv shell 3.8.1

# Generate a random password and copy it to the clipboard
# Very useful for generating a temporary token
#   usage: randpass [length]
randpass() {
    LENGTH=$1
    if [ "$LENGTH" -lt "2" ]; then LENGTH=24; fi
    SPECIAL_CHARS='#!-%$^@'
    SPECIAL_CHARS_LENGTH=${#SPECIAL_CHARS}
    SPECIAL_CHAR_SELECTED="${SPECIAL_CHARS:$(( RANDOM % ${#SPECIAL_CHARS} )):1}"
    POSITION=`grep -m1 -ao '[2-9]' /dev/urandom | head -n1` # get a random number in the range 2-9
    CUT_FROM=$(($LENGTH+1))
    PASS=`openssl rand -base64 32 | colrm $CUT_FROM | sed "s/./${SPECIAL_CHAR_SELECTED}/${POSITION}"`
    echo $PASS
    echo -n $PASS | pbcopy
    echo 'copied to clipboard!'
}

# kubectl autocompletion
source <(kubectl completion zsh)

# assume-role https://github.com/coinbase/assume-role
source $(which assume-role)

# Aliases
alias datetime='date +%Y%m%d%H%M'
alias k=kubectl
alias kx=kubectx
alias kns=kubens
alias t=terraform
alias tf=t

# Tokens

