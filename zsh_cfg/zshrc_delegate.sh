plugins=(
    aws
    brew
    colored-man-pages
    colorize
    cp
    docker
    extract
    git
    gitfast
    history
    man
    macos
    pipenv
    python
    # rsync   # rsync frequent cmds
    sublime # st: open a file, stt open current director
    sudo # press twice Esc will add sudo to current CMD
    # virtualenv
    urltools    # urlencode/decode
    vi-mode
    vscode
    z
    zsh-aliases-exa
    zsh-autosuggestions # enable autosuggestions
    zsh-completions
    zsh-syntax-highlighting
    zsh-history-substring-search
)

source $ZSH/oh-my-zsh.sh

### source exports
source ~/.env-configs/zsh_cfg/exports.sh

### source useful alias
source ~/.env-configs/zsh_cfg/aliases.sh

### source useful functions
source ~/.env-configs/zsh_cfg/functions.sh

### some of you private configs
source ~/.env-configs/zsh_cfg/priv.sh

# source useful functions
source ~/.env-configs/zsh_cfg/fzf_fn.sh

##### customieze Zsh #####
COMPLETION_WAITING_DOTS="true"

##### customize zsh-history-substring-search #####
# https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/history-substring-search
# only receive unique search results
setopt HIST_IGNORE_ALL_DUPS
zmodload zsh/terminfo
# bindkey "$terminfo[kcuu1]" history-substring-search-up
# bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
autoload bashcompinit
bashcompinit
source ~/.local/share/lscolors.sh

