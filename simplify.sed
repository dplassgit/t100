s/:rem.*$//
s/: rem.*$//
/^[0-9]* rem.*$/d
s/:if[ ]*/:if/g
s/[ ]*if[ ]*/if/g
s/[ ]*then[ ]*/then/g
s/[ ]*else[ ]*/else/g
s/[ ]*for[ ]*/for/g
s/:for[ ]*/:for/g
s/1 to[ ]*/1to/g
s/[ ]*dim[ ]*/dim/g
s/:dim[ ]*/:dim/g
s/[ ]*goto[ ]*/goto/g
s/:goto[ ]*/:goto/g
s/[ ]*gosub[ ]*/gosub/g
s/:gosub[ ]*/:gosub/g
s/ data /data/g
s/read[ ]*/read/g
s/^\([0-9]*\) \(.*$\)/\1\2/
