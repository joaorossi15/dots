# ~/.config/fish/config.fish

# — Rose-pine 
set -g GM_FG0        "#e0def4"
set -g GM_YELLOW     "#f6c177"
set -g GM_AQUA       "#31748f"
set -g GM_ROSE       "#ebbcba"
set -g GM_PURPLE     "#c4a7e7"
set -g GM_RED        "#eb6f92"
set -g GM_BG2        "#26233a"   

 
set -g fish_color_normal         $GM_FG0   # default text
set -g fish_color_command        $GM_ROSE   # your commands (ls, git, etc)
set -g fish_color_keyword        $GM_PURPLE # reserved words (for, if, else)
set -g fish_color_param          $GM_FG0  # command arguments
set -g fish_color_option         $GM_FG0  # flags like -la, --help
set -g fish_color_redirection    $GM_AQUA # > >> | etc
set -g fish_color_end            $GM_FG0    # && and ; 
set -g fish_color_error          $GM_RED    # failed commands / errors
set -g fish_color_comment        $GM_BG2    # bash‑style comments
set -g fish_color_search_match   $GM_PURPLE # when you use Ctrl‑R
set -g fish_color_quote          $GM_ROSE



for dir in $HOME/.local/bin /opt/nvim /usr/local/go/bin /opt/nvim-linux-x86_64/bin
    if test -d $dir; and not contains $dir $PATH
        set -gx PATH $PATH $dir
    end
end

#function fish_command_not_found
    # do nothing
#end
