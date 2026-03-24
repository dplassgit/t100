s/:rem.*$//
s/: rem.*$//
s/:REM.*$//
s/: REM.*$//
/^[0-9]* rem.*$/d
/^[0-9]* REM.*$/d
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
s/:IF[ ]*/:IF/g
s/[ ]*IF[ ]*/IF/g
s/[ ]*THEN[ ]*/THEN/g
s/[ ]*ELSE[ ]*/ELSE/g
s/[ ]*FOR[ ]*/FOR/g
s/:FOR[ ]*/:FOR/g
s/1 TO[ ]*/1TO/g
s/[ ]*DIM[ ]*/DIM/g
s/:DIM[ ]*/:DIM/g
s/[ ]*GOTO[ ]*/GOTO/g
s/:GOTO[ ]*/:GOTO/g
s/[ ]*GOSUB[ ]*/GOSUB/g
s/:GOSUB[ ]*/:GOSUB/g
s/ DATA /DATA/g
s/READ[ ]*/READ/g
s/^\([0-9]*\) \(.*$\)/\1\2/
