# ~/.config/fish/config.fish

set -g IMG_WHITE     "#f4f4f4"
set -g IMG_BLACK     "#1c1c1c"
set -g IMG_GRAY      "#7c7c7c"
set -g IMG_BLUE      "#7daea3"
set -g IMG_PURPLE    "#d3869b"
set -g IMG_GREEN     "#a9b665"
set -g IMG_YELLOW    "#d8a657"
set -g IMG_RED       "#ea6962"

set -g IMG_WHITE     "#f4f4f4"
set -g IMG_BLACK     "#1c1c1c"
set -g IMG_GRAY      "#7c7c7c"
set -g IMG_BLUE      "#7daea3"
set -g IMG_PURPLE    "#d3869b"
set -g IMG_GREEN     "#a9b665"
set -g IMG_YELLOW    "#d8a657"
set -g IMG_RED       "#ea6962"



for dir in $HOME/.local/bin /opt/nvim /usr/local/go/bin $HOME/.zvm/0.14.0
    if test -d $dir; and not contains $dir $PATH
        set -gx PATH $PATH $dir
    end
end

function fish_command_not_found
    # do nothing
end

alias zig="zig0.14"
