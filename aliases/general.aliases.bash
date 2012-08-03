#!/usr/bin/env bash

# General commands
alias df='df -h' # Display disk space usage
alias du='du -c -h' # Display disk space usage in current dir
alias hist='history | grep $1' # History of commands (searches for argument)
alias histf='history' # Full history of commands
alias pf='ps -Af | grep $1' # Search process for argument.
alias grep='grep --color=auto'

# File operation
# More verbose
alias cp='cp -v'
alias mv='mv -v'
if [[ `uname` = Darwin ]]; then
    alias rm='rm -v'
else
    alias rm='rm -vI' # Less dangerous rm
fi
alias mkdir='mkdir -pv' # Make parent directories automatically

# List directory contents
if [[ `uname` = Darwin ]]; then
    alias ls='ls -lh -G'
else
    alias ls='ls -lh --color=auto'
fi
alias sl='ls'
# Enhanced ls
alias la='ls -AFG'
# Show everything (apart from . and ..),
# and classify everything.

alias c='clear'
# Clears the screen.

alias q='exit'

# Tree
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

alias ping='ping -c 3'
# Ping three times instead of endlessly.

# For security
if [[ `uname` = *Linux* ]]; then
    alias chown='chown --preserve-root'
    alias chmod='chmod --preserve-root'
    alias chgrp='chgrp --preserve-root'
fi

# Mac CLI Vim set to MacVim
if [[ `uname` = Darwin ]]; then
    alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
fi

# Mac set Python version to 2.7
if [[ `uname` = Darwin ]]; then
    alias python='python2.7'
fi
