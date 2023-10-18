#!/bin/bash

# export PATH="/usr/local/opt/ruby/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/ruby/lib"
# export CPPFLAGS="-I/usr/local/opt/ruby/include"
# export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey "ç" fzf-cd-widget

# --color 'fg:#bbccdd,fg+:#ddeeff,bg:#334455,border:#778899'
# --color 'fg:#00ccdd,fg+:#009933,bg:#334455,preview-fg:#009911,preview-bg:#223344,border:#778899'
# --color 'fg:#009933,fg+:#11aa44,bg:#334455,border:#778899'
# --color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
FD_OPTIONS=" --type f --hidden --follow --exclude .git --exclude node_modules"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS"
--no-mouse --height 95% -1 --reverse --multi --inline-info
--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--bind='f3:execute(bat --style=numbers {} || less -f {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy)'
--color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
--color 'fg:#bbccdd,fg+:#ddeeff,bg:#334455,border:#778899'
--bind '?:toggle-preview'
--bind 'ctrl-a:select-all'
--bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
--bind 'ctrl-e:execute(echo {+} | xargs -o vim)'
--bind 'ctrl-v:execute(code {+})'
"


export FORGIT_FZF_DEFAULT_OPTS="
$FZF_DEFAULT_OPTS
--ansi
--height='95%'
--color 'bg:#334455,preview-bg:#223344,border:#778899'
--bind='ctrl-u:preview-page-up,F2:preview-up'
--bind='ctrl-d:preview-page-down,F3:preview-down'
--bind='ctrl-r:toggle-all'
--bind='ctrl-s:toggle-sort'
--bind='?:toggle-preview'
--bind='alt-w:toggle-preview-wrap'
--preview-window='right:75%'
+1
$FORGIT_FZF_DEFAULT_OPTS
"

source /Users/lihe/00Li/github/forgit/forgit.plugin.zsh

# Select a docker container to start and attach to
function da() {
  local cid
  cid=$(docker ps -a | sed 1d | fzf -1 -q "$1" | awk '{print $1}')

  [ -n "$cid" ] && docker start "$cid" && docker attach "$cid"
}
# Select a running docker container to stop
function ds() {
  local cid
  cid=$(docker ps | sed 1d | fzf -q "$1" | awk '{print $1}')

  [ -n "$cid" ] && docker stop "$cid"
}
# Select a docker container to remove
function drm() {
  local cid
  cid=$(docker ps -a | sed 1d | fzf -q "$1" | awk '{print $1}')

  [ -n "$cid" ] && docker rm "$cid"
}
# Select a docker container to remove
function dri() {
  local cid
  cid=$(docker images | sed 1d | fzf -q "$1" | awk '{print $1":"$2}')

  [ -n "$cid" ] && docker rmi "$cid"
}

unalias z 2> /dev/null
z() {
    [ $# -gt 0 ] && _z "$*" && return
    cd "$(_z -l 2>&1 | fzf --height 40% --nth 2.. --reverse --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
}

# find-in-file - usage: fif <SEARCH_TERM>
fif() {
  if [ ! "$#" -gt 0 ]; then
    echo "Need a string to search for!";
    return 1;
  fi
  rg --files-with-matches --no-messages "$1" | fzf $FZF_PREVIEW_WINDOW --preview "rg --ignore-case --pretty --context 10 '$1' {}"
}

# Install (one or multiple) selected application(s)
# using "brew search" as source input
# mnemonic [B]rew [I]nstall [P]lugin
bip() {
  local inst=$(brew formulae | fzf -m)

  if [[ $inst ]]; then
    for prog in $(echo $inst);
    do; brew install $prog; done;
  fi
}
# Update (one or multiple) selected application(s)
# mnemonic [B]rew [U]pdate [P]lugin
bup() {
  local upd=$(brew leaves | fzf -m)

  if [[ $upd ]]; then
    for prog in $(echo $upd);
    do; brew upgrade $prog; done;
  fi
}
# Delete (one or multiple) selected application(s)
# mnemonic [B]rew [C]lean [P]lugin (e.g. uninstall)
bcp() {
  local uninst=$(brew leaves | fzf -m)

  if [[ $uninst ]]; then
    for prog in $(echo $uninst);
    do; brew uninstall $prog; done;
  fi
}

# Install or open the webpage for the selected application
# using brew cask search as input source
# and display a info quickview window for the currently marked application
bci() {
    local token
    token=$(brew search --casks | fzf-tmux --query="$1" +m --preview 'brew cask info {}')

    if [ "x$token" != "x" ]
    then
        echo "(I)nstall or open the (h)omepage of $token"
        read input
        if [ $input = "i" ] || [ $input = "I" ]; then
            brew cask install $token
        fi
        if [ $input = "h" ] || [ $input = "H" ]; then
            brew cask home $token
        fi
    fi
}
# Uninstall or open the webpage for the selected application
# using brew list as input source (all brew cask installed applications)
# and display a info quickview window for the currently marked application
bcun() {
    local token
    token=$(brew cask list | fzf-tmux --query="$1" +m --preview 'brew cask info {}')

    if [ "x$token" != "x" ]
    then
        echo "(U)ninstall or open the (h)omepage of $token"
        read input
        if [ $input = "u" ] || [ $input = "U" ]; then
            brew cask uninstall $token
        fi
        if [ $input = "h" ] || [ $token = "h" ]; then
            brew cask home $token
        fi
    fi
}

# bms() {
#   local bookmarks_path=~/Library/Application\ Support/Google/Chrome/Default/Bookmarks
#   local jq_script='def ancestors: while(. | length >= 2; del(.[-1,-2])); . as $in | paths(.url?) as $key | $in | getpath($key) | {name,url, path: [$key[0:-2] | ancestors as $a | $in | getpath($a) | .name?] | reverse | join("/") } | .path + "/" + .name + "\t" + .url'
#   jq -r $jq_script < "$bookmarks_path" \
#   | sed -E $'s/(.*)\t(.*)/\\1\t\x1b[36m\\2\x1b[m/g' \
#   | fzf --ansi \
#   | cut -d$'\t' -f2 \
#   | xargs open
# }

fkill() {
    local pid
    if [ "$UID" != "0" ]; then
        pid=$(ps -f -u $UID | sed 1d | fzf -m | awk '{print $2}')
    else
        pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')
    fi

    if [ "x$pid" != "x" ]
    then
        echo $pid | xargs kill -${1:-9}
    fi
}
