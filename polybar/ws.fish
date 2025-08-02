#!/usr/bin/env fish

set active (wmctrl -d | awk '$2 == "*" {print $1}')
set total (wmctrl -d | wc -l)

for i in (seq 0 (math $total - 1))
    if test $i -eq $active
        printf "%%{F#f7c6c7}[%s]%%{F-} " $i
    else            #ff####
        printf "%s " $i
    end
end

echo
