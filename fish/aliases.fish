# Inspired by
# https://github.com/paulirish/dotfiles/blob/master/fish/aliases.fish

function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias heaviest-directories="du -h --max-depth 1 2>/dev/null | sort -h -r | head -n 20"

# When connecting to ssh, put hostname in window title
function ssh
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
	/usr/bin/ssh $argv;
end
