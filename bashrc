#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ $TERM != screen* ]] && exec tmux

source /etc/profile
# Paths
PATH="$HOME/bin:$HOME/.gem/ruby/1.9.1/bin:$PATH"
export BASH="$HOME/.bash"
export PYTHONDOCS=/usr/share/doc/python/html/
export PYTHON2DOCS=/usr/share/doc/python2/html/

# Avoid both duplicates and whitespace commands
export HISTCONTROL=ignoreboth
bind '"\C-p": history-search-backward'
bind '"\C-n": history-search-forward'

# Default Prompt
#PS1='[\u@\h \W]\$ '

# Load aliases
FUNCTIONS="${BASH}/aliases/*.bash"
for config_file in $FUNCTIONS
do
  source $config_file
done

# Theming
# Source Colors, then default themes
source "${BASH}/themes/colors.theme.bash"
source "${BASH}/themes/default.theme.bash"

# Load iBus
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=ibus

# Added by autojump install.sh
if [[ `uname` = *Linux* ]]; then
    source /etc/profile.d/autojump.bash
fi
