# ~/.config/fish/config.fish

# — Gruvbox‑Material palette (if not already set) —
set -g GM_FG0        "#d4be98"
set -g GM_YELLOW     "#d8a657"
set -g GM_AQUA       "#89b482"
set -g GM_GREEN      "#a9b665"
set -g GM_PURPLE     "#d3869b"
set -g GM_BLUE       "#7daea3"
set -g GM_RED        "#ea6962"
set -g GM_BG2        "#504945"   # for comments/errors

# — Override Fish’s syntax colors — 
set -g fish_color_normal         $GM_FG0   # default text
set -g fish_color_command        $GM_FG0   # your commands (ls, git, etc)
set -g fish_color_keyword        $GM_PURPLE # reserved words (for, if, else)
set -g fish_color_param          $GM_YELLOW # command arguments
set -g fish_color_option         $GM_GREEN  # flags like -la, --help
set -g fish_color_redirection    $GM_AQUA # > >> | etc
set -g fish_color_end            $GM_FG0    # && and ; 
set -g fish_color_error          $GM_RED    # failed commands / errors
set -g fish_color_comment        $GM_BG2    # bash‑style comments
set -g fish_color_search_match   $GM_PURPLE # when you use Ctrl‑R



for dir in $HOME/.local/bin /opt/nvim /usr/local/go/bin
    if test -d $dir; and not contains $dir $PATH
        set -gx PATH $PATH $dir
    end
end

function fish_command_not_found
    # do nothing
end
