function prompt {
    $Host.UI.RawUI.WindowTitle = $PWD
    if ($Host.UI.SupportsVirtualTerminal) {
        return "{0}[1;34m$PWD{0}[m> " -f [char]0x1b
    }
    else {
        return "$PWD> "
    }
}
