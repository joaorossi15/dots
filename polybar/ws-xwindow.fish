#!/usr/bin/env fish

# Get active window class
set win_id (xdotool getactivewindow)
set win_class (xprop -id $win_id WM_CLASS 2>/dev/null | sed 's/^.*"\(.*\)".*/\1/')

# Workspace formatting
set active (wmctrl -d | awk '$2 == "*" {print $1}')
set total (wmctrl -d | wc -l)

set ws_line ""
for i in (seq 0 (math $total - 1))
    if test $i -eq $active
        set ws_line "$ws_line%{F#f7c6c7}[$i]%{F-} "  # active: rosepine.love
    else
        set ws_line "$ws_line%{F#ffffff}[$i]%{F-} "  # active: rosepine.love
    end
end

# Print the result (label + window + workspaces)
set bar "%{F#f7c6c7}|"
echo "%{F#f7c6c7}[]%{F-} $win_class $bar $ws_line"
