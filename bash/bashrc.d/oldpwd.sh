if [[ -f "${XDG_STATE_HOME:-${HOME}/.local/state}/bash/oldpwd" ]]; then
    OLDPWD="$(< "${XDG_STATE_HOME:-${HOME}/.local/state}/bash/oldpwd")"
fi

trap 'echo "$PWD" > "${XDG_STATE_HOME:-${HOME}/.local/state}/bash/oldpwd"' EXIT
