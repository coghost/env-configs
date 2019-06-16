# ------------------------------------------
# miscellany alias
# ------------------------------------------
alias vim='mvim -v'
alias vi='mvim -v'
alias svi='sudo vim '
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lh='ls -lAh'
alias lh='ls -lAh'
alias lhS='ls -AlhS'
alias lht='lh -t'
alias ipscan0='sudo arp-scan --interface=en0 '
alias ipscan1='sudo arp-scan --interface=en1 '
alias attr_read='xattr -d com.apple.FinderInfo *'
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias stop_sleep_hour='caffeinate -t 3600'
alias dis_spot='sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist'
alias en_spot='sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist'
alias -g gpi='| grep -i'
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
alias dkrimg='sudo docker rmi'
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
