#!/bin/bash

if [[ $USER = 'root' ]]; then
    user_colour=${bold_red}
else
    user_colour=${bold_yellow}
fi
PS1="${white}[${yellow}\t${white}][${user_colour}\u:${blue}\W${white}]\$ ${normal}"
#
# 'less' colour highlighting
export LESS="-R"
# 'ls' enhanced colour highlighting
if [[ `uname` = *Linux* ]]; then
    eval $(dircolors -b)
fi
# 'man' colour highlighting
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}
