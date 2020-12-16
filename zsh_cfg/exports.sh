
### sys path ###
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export ANDROID_HOME='/usr/local/share/android-sdk'
export ANDROID_SDK_ROOT='/usr/local/share/android-sdk'
#export ANDROID_AVD_HOME=/Users/$USER/.android/avd
# export PATH="$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_AVD_HOME"
export PATH="$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools"
# export PATH="$PATH:$ANDROID_SDK_ROOT/build-tools/26.0.3/"
export PATH="$PATH:$ANDROID_SDK_ROOT/build-tools/29.0.2/"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"

export PYENV_ROOT=~/.pyenv
export PATH=$PYENV_ROOT/shims:$PATH

export PIPENVHOME='/Users/lihe/.local/share/virtualenvs/'
### sys path ###

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export HISTCONTROL=ignoredumps
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
# export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"
export TERM=xterm-256color
