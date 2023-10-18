# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#     source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

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
    # pipenv
    # python
    # rsync # rsync frequent cmds
    # sublime # st: open a file, stt open current director
    # sudo # press twice Esc will add sudo to current CMD
    # virtualenv
    urltools # urlencode/decode
    vi-mode
    # vscode
    z
    zsh-autosuggestions # enable autosuggestions
    zsh-completions
    zsh-syntax-highlighting
    zsh-history-substring-search
)
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export TERM=xterm-256color
# ZSH_THEME="powerlevel10k/powerlevel10k"

# set to your env-configs root path
source ~/.env-configs/zsh_cfg/zshrc_delegate.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#
eval "$(starship init zsh)"
