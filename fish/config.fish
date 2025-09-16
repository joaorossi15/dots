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
