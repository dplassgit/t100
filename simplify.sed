s/:rem .*$//
s/: rem.*$//
s/^[0-9]* rem.*$//
s/ if /if/g
s/ then /then/g
s/ for /for/g
s/ dim /dim/g
s/ data /data/g
s/read /read/g
s/1 to /1to/g
s/^\([0-9]*\) \(.*$\)/\1\2/
