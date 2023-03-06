PROMPT_DIRTRIM=2

if [ "$TERM" = xterm-color ] || [[ $TERM = *-256color ]]; then
    # REF: https://en.wikipedia.org/wiki/ANSI_escape_code
    PS1='\[\e[1;32m\]\h\[\e[m\]:\[\e[1;34m\]\w\[\e[m\]\$ ' # Green
    # PS1='\[\e[1;33m\]\h\[\e[m\]:\[\e[1;34m\]\w\[\e[m\]\$ ' # Yellow
    # PS1='\[\e[1;31m\]\h\[\e[m\]:\[\e[1;34m\]\w\[\e[m\]\$ ' # Red
else
    PS1='\h:\w\$ '
fi

# Title
if [[ $TERM = xterm* ]] || [[ $TERM = rxvt* ]]; then
    PS1="\[\e]0;\h: \w\a\]${PS1}"
fi
