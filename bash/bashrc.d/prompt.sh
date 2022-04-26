PROMPT_DIRTRIM=2

if [[ "$TERM" == xterm* ]]; then
    PS1='\[\e[1;32m\]\h\[\e[m\]:\[\e[1;34m\]\w\[\e[m\]\$ '
    PS1="\[\e]0;\h: \w\a\]${PS1}"
else
    PS1='\h:\w\$ '
fi
