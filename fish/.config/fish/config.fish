# Run commands only in interactive sessions
if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Make PostgreSQL tools available globally
set -gx PATH /Library/PostgreSQL/18/bin $PATH

# Make Go binaries (like sqlc) available globally
set -gx PATH /go/bin $PATH

export EDITOR='nvim'

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

starship init fish | source
