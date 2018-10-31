# Inspired by
# https://github.com/paulirish/dotfiles/blob/master/fish/aliases.fish

function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias heaviest-directories="du -h --max-depth 1 2>/dev/null | sort -h -r | head -n 20"
alias l="ls -alh"

# When connecting to ssh, put hostname in window title
# and set TERM variable to screen to improve compatibility
# with remote hosts terminal definitions
function ssh
	# Check if current command is ssh, if not bypass this alias.
	# Needed to not break some commands that use
	# ssh internally, e.g. scp completions
	if test "$_" != "ssh"
		/usr/bin/ssh $argv;
		return 0;
	end
	# for loop to find the first positional argument
	# which is probably the hostname
	set flag "";
	for option in $argv
		if string match -- "-*" $option
			set flag "true";
		else if test -z $flag
			echo -ne "\033]0;$option\007";
			break;
		else
			set flag "";
		end
	end
	env TERM=screen /usr/bin/ssh $argv;
end
