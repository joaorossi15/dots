# ~/.config/fish/config.fish

# Define new theme variables from image
set -g GM_PRIMARY    "#6a0e1e"
set -g GM_LIGHT      "#FFFFFF"
set -g GM_ACCENT     "#7f5a60"
set -g GM_ALT1       "#9e0f20"
set -g GM_ALT2       "#9e0f20"

# Full red theme: only parameters are accented
set -g fish_color_normal         $GM_PRIMARY      # default text
set -g fish_color_command        $GM_ALT1      # commands (ls, git, etc)
set -g fish_color_keyword        $GM_PRIMARY      # keywords (if, for, end)
set -g fish_color_param          $GM_PRIMARY       # parameters (filenames, etc) — only accent
set -g fish_color_option         $GM_PRIMARY      # options (-h, --help)
set -g fish_color_redirection    $GM_PRIMARY      # > >> | etc
set -g fish_color_end            $GM_PRIMARY      # &&, ;, etc
set -g fish_color_error          $GM_ALT1         # errors (use a vivid or deeper red)
set -g fish_color_comment        $GM_ALT2         # comments (use a darker red tone)
set -g fish_color_quote          $GM_PRIMARY      # quoted strings
set -g fish_color_search_match   $GM_ALT2         # red highlight
set -g fish_color_autosuggestion $GM_LIGHT        # autosuggestions
set -g fish_color_cancel         $GM_ALT1         # cancel control
set -g fish_color_operator       $GM_PRIMARY      # operators (=, +, etc)
set -g fish_color_valid_path     $GM_PRIMARY      # paths

set -x TERM xterm-256color
set -x COLORTERM truecolor

for dir in $HOME/.local/bin /opt/nvim /usr/local/go/bin /opt/nvim-linux-x86_64/bin 
    if test -d $dir; and not contains $dir $PATH
        set -gx PATH $PATH $dir
    end
end

set -gx GOPATH $HOME/go
set -gx GOBIN $GOPATH/bin
set -gx PATH $PATH $GOBIN


function pmd
    if not set -q argv[1]
        echo "Usage: pomodoro {work|work45|work120|break}"
        return 1
    end
    
    set -l mode (string lower -- (string trim -- $argv[1]))

    switch $mode
        case "work"
            set duration 25m
        case "work45"
            set duration 45m
        case "work120"
            set duration 2h
        case "break"
            set duration 10m
        case '*'
            echo "Unknown mode '$argv[1]'. Use 'work', 'work45' or 'break'."
            return 1
    end

    echo $mode | lolcat
    timer $duration
    spd-say "'$mode' session done"
end

if status is-interactive
    if not set -q TMUX
        tmux attach -t main ^ /dev/null; or tmux new -s main
    end
end
