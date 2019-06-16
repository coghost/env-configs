DIRNAME=$0
if [ "${DIRNAME:0:1}" = "/" ]; then
    CURDIR=$(dirname $DIRNAME)
else
    CURDIR="$(pwd)"/"$(dirname $DIRNAME)"
fi

source $CURDIR/.p9krc

plugins=(
    # aws
    # brew
    cp
    git
    gitfast
    osx
    sudo # press twice Esc will add sudo to current CMD
    # virtualenv
    # vi-mode
    # z
    # zsh-autosuggestions
    # zsh-syntax-highlighting
    # zsh-completions
    # zsh-history-substring-search
)

source $ZSH/oh-my-zsh.sh

### source exports
source $CURDIR/.exports.sh

### source useful alias
source $CURDIR/.alias.sh

### source useful functions
source $CURDIR/.functions.sh

### some of you private configs
source $CURDIR/.priv.sh
