if [ "$BASH" ]; then
    # Bash script
    if [[ ! -o posix && -f ~/.bashrc ]]; then
        . ~/.bashrc
    fi
fi
