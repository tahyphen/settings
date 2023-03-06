if [[ $- != *i* ]]; then
    return
fi

for i in "$(dirname $(readlink ~/.bashrc))"/bashrc.d/*.sh; do
    if [ -f "$i" ]; then
        . "$i"
    fi
done
unset i
