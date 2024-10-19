998 REM split: input=B$, delimineter=d$, output=a$ array
999 dim a$(50)
1000 J=0:FORI=1TOLEN(B$):C$=MID$(B$,I,1):IFC$=d$THENJ=J+1:NEXT:RETURN
1010 A$(J)=A$(J)+C$:NEXT:RETURN


1098 rem strip b$
1100 if left$(b$,1)=" " then b$=mid$(b$,2):goto1100
1110 if right$(b$,1)=" " then b$=left$(b$,len(b$)-1):goto1110
1120 return
