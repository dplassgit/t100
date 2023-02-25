0 goto 5000

9 rem print the cell at c,r at the current location
10 if f$(r,c)="" then?"     ";:return
15 if left$(f$(r,c),1)="="then?using" #.##";v#(r,c);:return
25 if left$(f$(r,c),1)="'"then?using"\   \";mid$(f$(r,c),2);:return

100 K$=INKEY$:IF K$=""THEN 100: rem main loop
110 IF K$="j" THEN CR=CR+1:GOSUB 1000:GOTO 100
120 IF K$="k" THEN CR=CR-1:GOSUB 1000:GOTO 100
130 IF K$="l" THEN CC=CC+1:GOSUB 1000:GOTO 100
140 IF K$="h" THEN CC=CC-1:GOSUB 1000:GOTO 100
150 IF K$="0" THEN gosub 3000:goto 100
160 IF K$="q" THEN 9000: rem quit
170 rem e for edit, g for goto, slash for menu, s for save, r for retrieve
200 GOTO 100

1000 REM reset previous cursor (pc,pr) in regular video
1010 c=pc-rc+1:r=pr-rr+2:PRINT@C*5+R*40,nv$;:r=pr:c=pc:gosub10

1110 IF CR<0 THEN CR=0 else IF CR>25 THEN CR=25
1120 IF CC<0 THEN CC=0 else IF CC>25 THEN CC=25 : rem 25=z
1129 rem adjust the origin coords. this should be smarter instead of just adding or subtracting 1...
1130 if cr-rr>=6 then rr=rr+1:gosub2000 else if cr>=0 and cr<rr then rr=rr-1:gosub2000
1140 if cc-rc>=7 then rc=rc+1:gosub2000 else if cc>=0 and cc<rc then rc=rc-1:gosub2000

1200 REM show new cursor in reverse
1210 C=cc-rc+1:R=cr-rr+2:PRINT @(C*5+R*40),rv$;:r=cr:c=cc:gosub10:?nv$

1220 rem print location in upper left. NOTE zero-based internally but 1-based externally.
1230 ?@40,chr$(65+cc);:if cr<9then?using"#";cr+1;: ?" ";else ?using"##";cr+1
1240 rem print the formula or value in the top row. 
1250 ?@7,space$(31);:?@7,f$(cr,cc)

1400 PC=CC: PR=CR: return : rem save cursor location

1999 rem Redraw the whole screen: headers first
2000 PRINT@45,"";:FOR C=RC TO RC+6:PRINT rv$"  "CHR$(65+C)"  ";:NEXT
2030 FOR R=RR TO RR+5:?@80+(r-rr)*40,rv$;:? using" ##  ";r+1;:?nv$;
2040 for c=rc to rc+6:gosub10:next:next:RETURN

2999 rem Implements "home". this is a little inefficient. 
3000 cc=0:cr=0:gosub 1000:if rr<>0 or rc<>0 then rr=0:rc=0:gosub2000
3010 gosub1200:return

5000 DEFINT A-Z:rv$=chr$(27)+"p":nv$=chr$(27)+"q": rem reverse, normal video
5010 CLS:PRINT nv$CHR$(27)"VInitializing..."
5020 dim f$(25,25),v#(25,25): rem formulas, values. Row, column
5040 CC=0:CR=0: REM cursor col, row (zero-based)
5050 PC=0:PR=0: REM previous cursor col, row (zero-based)
5060 RC=0:RR=0: rem origin col, row (zero-based)
5065 cls
5070 PRINT @0,"Value:"
5100 rem temporarily fill cells
5110 f$(0,0)="=a2+1":v#(0,0)=2.2:f$(0,1)="=1.2":v#(0,1)=1.2:f$(1,0)="'Hello"
5120 f$(2,2)="'hi":f$(3,2)="'Hello there a very long value"
5200 GOSUB 2000: rem draw the indexes
5210 gosub 1200: rem draw the initial cursor
5300 goto 100

9000 rem stop
9010 PRINT nv$:PRINT CHR$(27)"W": REM allow scroll
9020 stop
9030 CLS:PRINT CHR$(27)"V": goto 5070
