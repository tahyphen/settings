if [[ "$-" != *i* ]]; then
    return
fi

for i in "${XDG_CONFIG_HOME:-${HOME}/.config}/bash/bashrc.d"/*.sh; do
    if [[ -f "$i" ]]; then
        . "$i"
    fi
done
unset -v i
