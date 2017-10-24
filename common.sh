function die {
    local msg=“$1”
    (>&2 echo Fatal: “$msg”)  # Subshell avoids interactions with other redirections
    exit 1
}
