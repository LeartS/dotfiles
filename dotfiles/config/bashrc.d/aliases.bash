alias askai='sgpt --no-interaction'
alias bashly='docker run --rm -it --user $(id -u):$(id -g) --volume "$PWD:/app" dannyben/bashly'
alias myip="curl --silent https://myipv4.p1.opendns.com/get_my_ip | jq --raw-output '.ip'"
alias heaviest-directories="du -h --max-depth 1 2>/dev/null | sort -h -r | head -n 20"
alias ls="ls --color=auto"
alias l="ls -l --almost-all --human-readable --color=auto"
alias ll="ls -l --almost-all --human-readable --color=auto"
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias dotdrop="dotdrop --cfg=dotdrop.yaml --profile=common"
