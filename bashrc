#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /etc/profile
# Paths
PATH="$HOME/bin:$PATH"
export BASH="$HOME/.bash"

# Default Prompt
#PS1='[\u@\h \W]\$ '
# Source Colors, then default themes
source "${BASH}/themes/colors.theme.bash"
source "${BASH}/themes/default.theme.bash"

# Load aliases
FUNCTIONS="${BASH}/aliases/*.bash"
for config_file in $FUNCTIONS
do
  source $config_file
done

# Load iBus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Keychain
eval `keychain --eval --agents ssh id_rsa`

# Added by autojump install.sh
source /etc/profile.d/autojump.bash
