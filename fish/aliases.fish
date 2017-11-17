# Inspired by
# https://github.com/paulirish/dotfiles/blob/master/fish/aliases.fish

function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias heaviest-directories="du -h --max-depth 1 2>/dev/null | sort -h -r | head -n 20"
