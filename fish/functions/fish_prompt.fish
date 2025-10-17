set -g POWERLINE_SEP '→'

function fish_prompt
  # — Segment 1: Current directory in yellow —
  # set_color --bold fe8019
  # printf ' %s ' $POWERLINE_SEP

  set_color --bold ea6962
  printf '%s ' (prompt_pwd)

  # — Arrow separator in orange —
  set_color --bold d8a657
  printf '%s ' $POWERLINE_SEP

  # — Segment 2: Git branch in orange with dirty flag —
  if git rev-parse --is-inside-work-tree &>/dev/null
    set -l branch (git symbolic-ref --short HEAD 2>/dev/null)
     set_color --bold fe8019
    printf 'git:%s ' $branch
    if not git diff --quiet &>/dev/null
      printf '* '
    end
    # Arrow separator in orange
  end

  # — Segment 3: Exit status in red if non‑zero —
  if test $status -ne 0
      # set_color --bold fb4934
    
    printf 'status:%d' $status
    # Arrow separator in orange
    # set_color --bold fe8019
    # printf ' %s ' $POWERLINE_SEP
  end

  # — Final prompt arrow in orange —
  #set_color --bold fe8019
  #printf ' ➜ '

  # Reset to default
    set_color normal
end

function fish_right_prompt
  # time in grey
  set_color --bold 928374
  printf '%s' (date '+%H:%M')
  
  # battery in green/orange/red
  if set -q BATTERY_PERCENT; and test $BATTERY_PERCENT -le 100
    set -l pct $BATTERY_PERCENT
    if test $pct -gt 50
      set_color --bold b8bb26
    else if test $pct -gt 20
      set_color --bold fe8019
    else
      set_color --bold fb4934
    end
    printf ' 🔋%d%%' $pct
  end

  set_color normal
end
