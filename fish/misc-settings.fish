# Just display the time of previous commands
set -g theme_date_format "+%H:%M:%S"

# add yarn global path to $PATH
set PATH (yarn global bin) $PATH
# add local binaries to $PATH
set PATH ~/.local/bin $PATH

if [ -z $TMUX ]; exec tmux; end
