if status is-interactive
    # Commands to run in interactive sessions can go here
end

# abbreviation for cd .. alias
function multicd
    set -l length (math (string length -- $argv) - 1)
    echo cd (string repeat -n $length ../)
end

abbr --add dotdot --regex '^\.\.+$' --function multicd

alias cdd 'cd "$(fd -t d . | fzf --prompt="Select directory to jump: " --height=~30% --layout=reverse --border --exit-0)"' # cd with steroids

# better ls
alias ls "exa -a --icons --group-directories-first"
alias ll "exa -lah --icons --no-time --git --group-directories-first"
alias lt "exa -lh --icons --no-user --git -T -L 4 --ignore-glob='.git|node_modules' --group-directories-first --no-permissions --no-filesize --no-time"

# git
alias gd "git diff"
alias gs "git status"

set PATH "$PATH":"/usr/local/go/bin"
set PATH "$PATH":"$HOME/.local/bin"
set PATH "$PATH":"$HOME/.local/scripts"

set FNM_PATH "/home/sujan/.local/share/fnm"
if [ -d "$FNM_PATH" ]
    set PATH "$FNM_PATH" $PATH
    fnm env | source
end

# defaults
export VISUAL="nvim"
export EDITOR="nvim"

starship init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
