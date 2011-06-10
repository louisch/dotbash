#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /etc/profile
PATH="$HOME/bin:$PATH"

PS1='[\u@\h \W]\$ '

export BASH="$HOME/.bash"

# Load aliases
FUNCTIONS="${BASH}/aliases/*.bash"
for config_file in $FUNCTIONS
do
  source $config_file
done
