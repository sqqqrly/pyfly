# Report an error and die with a exit code of 1 (default).
# Parameters:
#   - msg: The error msg to write to stderr.
#   - rc : Optional exit code; defaults to 1.
function die {
    local msg=“${1}”
    local rc="${2:-1}"
    (>&2 echo Fatal: “${msg}”)  # Subshell avoids interactions with other redirections
    exit ${rc}
}
