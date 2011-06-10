#!/usr/bin/env bash

# List directory contents
alias sl=ls
alias ls='ls --color=auto'
# Automatic colouring of results.
alias la='ls -AF'
# Show everything (apart from . and ..),
# and classify everything.
alias ll='ls -Alh'
# Show everything, and list them in a list format.

alias mkdir='mkdir -p'
# Make parent directories automatically

alias s='sudo'

alias c='clear'
# Clears the screen.

alias h='history'

alias q='exit'

# Tree
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

alias ping='ping -c 5'
# Ping five times instead of endlessly.
