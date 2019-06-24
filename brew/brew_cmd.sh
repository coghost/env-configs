# --------------------------------------------
# install brew
# --------------------------------------------
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew update
# --------------------------------------------
brew update

# add more tap formulae
# --------------------------------------------
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap homebrew/cask-fonts
brew tap macvim-dev/macvim
brew tap sambadevi/powerlevel9k

# add OS X UI softs
# --------------------------------------------
brew cask install dash
brew cask install font-hack-nerd-font
brew cask install font-inconsolata
brew cask install rdm

# do brew install
# --------------------------------------------
brew install mpg123
brew install mplayer
brew install pandoc
brew install shfmt
brew install Codecs33
brew install shpotify   # spotify mac cli controller
brew install cmake
brew install jq
brew install global --with-pygments --with-ctags
brew install ffmpeg --with-libvorbis --with-sdl2 --with-theora
brew install fzf
brew install pipenv
brew install redis
brew install zplug
brew install node
brew install ifstat
brew install openssl
brew install arp-scan
brew install p7zip
brew install tree
brew install zsh
brew install coreutils
brew install the_silver_searcher
brew install swig
brew install mysql
brew install nmap
brew install libssl-dev
brew install dnsmasq
brew install autossh
brew install powerlevel9k
brew install gnu-sed --with-default-names
brew install git
brew install unrar
brew install wget
brew install fontforge
brew install nmcli
brew install macvim
brew install telnet
brew install ctag
