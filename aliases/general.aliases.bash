#!/usr/bin/env bash

# General commands
alias df='df -h' # Display disk space usage
alias du='du -c -h' # Display disk space usage in current dir
alias hist='history | grep $1' # History of commands (searches for argument)
alias histfull='history' # Full history of commands
alias pf='ps -Af | grep $1' # Search process for argument.
alias grep='grep --color=auto'

# File operation 
# Verbose file operationss
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias mkdir='mkdir -pv' # Make parent directories automatically

# List directory contents
alias sl='ls'
alias ls='ls -lh --color=auto'
# Enhanced ls
alias la='ls -AF'
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
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
