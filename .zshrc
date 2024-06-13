export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
    git
    #zsh-aws-vault
    #kube-ps1
)

source $ZSH/oh-my-zsh.sh

# Terminal colors
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcac
export LS_COLORS="di=1;34:ln=1;36:so=1;31:pi=1;33:ex=1;32:bd=1;34;46:cd=1;34;43:su=0;41:sg=0;46:tw=0;42:ow=30;42"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}   # zsh to use the same colors as ls

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then eval "$(pyenv init -)"; fi
pyenv shell 3.12.3

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

## kubectl autocompletion
#source <(kubectl completion zsh)
#
## enable and customize kube-ps1 prompt
#PROMPT='$(kube_ps1) '$PROMPT
#get_cluster_short() {
#  echo "$1" | cut -d . -f1
#}
#KUBE_PS1_SYMBOL_ENABLE="false"
#KUBE_PS1_CLUSTER_FUNCTION=get_cluster_short

# Aliases
alias datetime='date +%Y%m%d%H%M'
alias datez='date -u +"%Y-%m-%dT%H:%M:%SZ"'   # print ISO-8601 compliant date
alias k=kubectl
alias kns=kubens
alias t=terraform
alias tf=t
alias kpods='k get pods --sort-by=.status.startTime'
alias kjobs='k get jobs --sort-by=.metadata.creationTimestamp'
alias kcj='k get cj --sort-by=.metadata.creationTimestamp'
alias knodes='k get nodes --sort-by=.metadata.creationTimestamp'
alias kpv='k get pv --sort-by=.metadata.creationTimestamp'
alias kpvc='k get pvc --sort-by=.metadata.creationTimestamp'
alias krestarts='k get pods --sort-by=".status.containerStatuses[0].restartCount"'
alias kexport="yq d - 'metadata.resourceVersion' | yq d - 'metadata.uid' | yq d - 'metadata.managedFields' | yq d - 'metadata.annotations' | yq d - 'metadata.creationTimestamp' | yq d - 'metadata.selfLink'"
alias kigs="knodes -o custom-columns=NAME:.metadata.name,IG:'.metadata.labels.kops\.k8s\.io/instancegroup'"
alias asciicast2gif='docker run --rm -v $PWD:/data asciinema/asciicast2gif -S 1'


# Delete word up to whitespace
# e.g. "ip-10-116-53-238.us-west-2.compute.internal" will be deleted as one word instead of stopping at "-" when using CTRL+W
WORDCHARS+=':/.-'

# Tokens

# Enable asdf
#. /usr/local/opt/asdf/asdf.sh
