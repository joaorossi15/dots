set -g POWERLINE_SEP '→'

function fish_prompt
  set_color --bold 212121
  printf '%s ' (prompt_pwd)

  set_color --bold 980000
  printf '%s ' $POWERLINE_SEP

  if git rev-parse --is-inside-work-tree &>/dev/null
    set -l branch (git symbolic-ref --short HEAD 2>/dev/null)
     set_color --bold 980000
    printf 'git:%s ' $branch
    if not git diff --quiet &>/dev/null
      printf '* '
    end
  end

  if test $status -ne 0
    printf 'status:%d' $status
  end
    set_color normal
end

function fish_right_prompt
  set_color --bold 980000
  printf '%s' (date '+%H:%M')
  set_color normal
end
