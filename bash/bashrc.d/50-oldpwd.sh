OLDPWDFILE="$(dirname $(readlink -f ~/.bashrc))/oldpwd"
if [ -f "$OLDPWDFILE" ]; then
    OLDPWD="$(< $OLDPWDFILE)"
fi

trap 'echo "$PWD" > "$OLDPWDFILE"' EXIT
