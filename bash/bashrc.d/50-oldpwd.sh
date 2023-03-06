OLDPWDFILE="$(dirname $(readlink -f ~/.bashrc))/oldpwd"
if [ -f "$OLDPWDFILE" ]; then
    OLDPWD="$(< $OLDPWDFILE)"
fi

trap 'echo "$OLDPWD" > "$OLDPWDFILE"' EXIT
