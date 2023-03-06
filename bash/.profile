for i in "$(dirname $(readlink ~/.profile))"/profile.d/*.sh; do
    if [ -f "$i" ]; then
        . "$i"
    fi
done
unset i
