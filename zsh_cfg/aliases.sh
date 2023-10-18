# ------------------------------------------
# miscellany alias
# ------------------------------------------
# alias vim='mvim -v'
# alias vi='mvim -v'
alias svi='sudo vim '
alias le="exa -l -g --icons --git"
alias lh="exa -l -a"
# alias ls='ls --color=auto'
# alias ll='ls -alF --color=auto'
# alias la='ls -A --color=auto'
# alias l='ls -CF --color=auto'
# alias lh='ls -lAh --color=auto'
# alias lh='ls -lAh --color=auto'
# alias lhS='ls -AlhS --color=auto'
# alias lht='lh -t --color=auto'
alias ipscan0='sudo arp-scan --interface=en0 '
alias ipscan1='sudo arp-scan --interface=en1 '
alias attr_read='xattr -d com.apple.FinderInfo *'
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias stop_sleep_hour='caffeinate -t 3600'
alias dis_spot='sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist'
alias en_spot='sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist'
alias -g gpi='| grep -i'
alias gfap='git fetch && git pull'
### miscellany ###

# ------------------------------------------
# docker alias
# ------------------------------------------
alias docker='sudo docker'
alias dpa='sudo docker ps -a'
alias dkp='sudo docker ps'
alias dki='sudo docker images'
alias dkl='sudo docker logs'
alias dkst='sudo docker start'
alias dkstop='sudo docker stop'
alias dkrs='sudo docker restart'
alias dlog10='sudo docker logs -f --tail=10'
alias dlog50='sudo docker logs -f --tail=50'
alias dlog500='sudo docker logs -f --tail=500'
alias drimg='sudo docker rmi'
alias drct='sudo docker rm'
alias dexi='docker exec -it'
### docker ###

# ------------------------------------------
# git log alias
# ------------------------------------------
alias gcm='git commit -m'
alias gmnff='git merge --no-ff'
alias glg1='git log --oneline --decorate --graph'
git config --global alias.lg "log --color --graph --date=format:'%m/%d %H:%M' --pretty=format:'%C(yellow)%h%Creset%C(red)%d%Creset %s %Cred『%C(bold blue)%an, %Cgreen%cd%Cred』%Creset' --abbrev-commit --"
alias glg='git lg'
### git ###

# ------------------------------------------
# python alias
# ------------------------------------------
alias pycprofile='python -m cProfile -s calls '
alias ns='nosetests'
### python ###

### Productivity ###
alias orig_cat='ccat'
# alias cat='ccat'
alias ssrc='source ~/.zshrc'
alias clean_ds_store="find . -type f -name '*.DS_Store' -ls -delete"

### ls via tree
alias ll1="tree --dirsfirst -ChFL 1"
alias ll2="tree --dirsfirst -ChFL 2"
alias ll3="tree --dirsfirst -ChFL 3"
alias ll1e="tree --dirsfirst -ChFupDaL 1"
alias ll2e="tree --dirsfirst -ChFupDaL 2"
alias ll3e="tree --dirsfirst -ChFupDaL 3"

### editor
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
alias appium_desktop='/System/Volumes/Data/Applications/Appium.app/Contents/MacOS/Appium'
alias goland='/usr/local/bin/goland'

alias setproxy='export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;'
alias disproxy='unset http_proxy https_proxy'

alias ats='python -m unittest -c '
alias atsd='python -m unittest discover -s '

alias csm='python census'
alias csc='python census/crawl.py'

alias nv='nvim'
alias vi='nvim'
alias svi='sudo nvim'
alias enpy='source .venv/bin/activate'
alias gor='go run '

alias cat="bat --theme=\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub)"
alias icat="kitty +kitten icat"
alias kd="kitty +kitten diff"

alias vi='lvim'
alias vim='lvim'
alias svi='sudo lvim '
alias sync2nb="scp /tmp/public/crawl_darwin_amd64 nebula@nbmmh:~/Documents/gocc/crawl"
alias sync2nb02="scp /tmp/public/crawl_darwin_amd64 cpagp@nb002:~/Documents/gocc/crawl"
alias sync2nb03="scp /tmp/public/crawl_darwin_amd64 gaopeng@nb003:~/Documents/gocc/crawl"
alias sync2nb04="scp /tmp/public/crawl_darwin_amd64 mac@nb004:~/Documents/gocc/crawl"
alias sync2nb05="scp /tmp/public/crawl_darwin_amd64 mac@nb005:~/Documents/gocc/crawl"
alias sync2nb06="scp /tmp/public/crawl_darwin_amd64 mac@nb006:~/Documents/gocc/crawl"
alias sync2nb07="scp /tmp/public/crawl_darwin_amd64 mac@nb007:~/Documents/gocc/crawl"
alias sync2nb08="scp /tmp/public/crawl_darwin_amd64 mac@nb008:~/Documents/gocc/crawl"
alias sync2nb09="scp /tmp/public/crawl_darwin_amd64 mac@nb009:~/Documents/gocc/crawl"
alias sync2nb10="scp /tmp/public/crawl_darwin_amd64 macuser@nb010:~/Documents/gocc/crawl"
alias sync2nb011="scp /tmp/public/crawl_darwin_amd64 aaa@nb011:~/Documents/gocc/crawl"
alias sync2nb012="scp /tmp/public/crawl_darwin_amd64 mac@nb012:~/Documents/gocc/crawl"
alias sync2nb013="scp /tmp/public/crawl_darwin_amd64 macmini@nb013:~/Documents/gocc/crawl"
alias sync2nb014="scp /tmp/public/crawl_darwin_amd64 aaa@nb014:~/Documents/gocc/crawl"
alias syncmb_mmh="rsync -ahvrPt --delete --filter='merge deploy/mb.rsync' . nebula@nbmmh:~/Documents/mini-crawler/"
alias syncmb_12="rsync -ahvrPt --delete --filter='merge deploy/mb.rsync' . mac@nb012:~/Documents/mini-crawler/"
alias syncmb_02="rsync -ahvrPt --delete --filter='merge deploy/mb.rsync' . cpagp@nb002:~/Documents/mini-crawler/"
alias syncmb_03="rsync -ahvrPt --delete --filter='merge deploy/mb.rsync' . gaopeng@nb003:~/Documents/mini-crawler/"
alias syncmb_04="rsync -ahvrPt --delete --filter='merge deploy/mb.rsync' . mac@nb004:~/Documents/mini-crawler/"
alias syncmb_05="rsync -ahvrPt --delete --filter='merge deploy/mb.rsync' . mac@nb005:~/Documents/mini-crawler/"
alias syncmb_06="rsync -ahvrPt --delete --filter='merge deploy/mb.rsync' . mac@nb006:~/Documents/mini-crawler/"
alias syncmb_07="rsync -ahvrPt --delete --filter='merge deploy/mb.rsync' . mac@nb007:~/Documents/mini-crawler/"
alias syncmb_08="rsync -ahvrPt --delete --filter='merge deploy/mb.rsync' . mac@nb008:~/Documents/mini-crawler/"
alias syncmb_09="rsync -ahvrPt --delete --filter='merge deploy/mb.rsync' . mac@nb009:~/Documents/mini-crawler/"
