for i in "${XDG_CONFIG_HOME:-${HOME}/.config}/bash/profile.d"/*.sh; do
    if [ -f "$i" ]; then
        . "$i"
    fi
done
unset -v i
