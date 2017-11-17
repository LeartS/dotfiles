# Path to Oh My Fish install.
set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/learts/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set PATH ~/.local/bin $PATH

# CUSTOM SETTINGS

# Just display the time of previous commands
set -g theme_date_format "+%H:%M:%S"

# source aliases file
source ~/.config/fish/aliases.fish


