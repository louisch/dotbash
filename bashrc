#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /etc/profile
PATH="$HOME/bin:$PATH"

#Default Prompt
#PS1='[\u@\h \W]\$ '
# Source Colors, then default themes
source "${BASH}themes/colors.theme.bash"
source "${BASH}themes/default.theme.bash"

export BASH="$HOME/.bash"

# Load aliases
FUNCTIONS="${BASH}/aliases/*.bash"
for config_file in $FUNCTIONS
do
  source $config_file
done

# Keychain
eval `keychain --eval --agents ssh id_rsa`
