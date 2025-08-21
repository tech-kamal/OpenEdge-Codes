DEFINE VARIABLE iCount AS INTEGER     NO-UNDO.
DEFINE VARIABLE iSum AS INTEGER     NO-UNDO.
ASSIGN 
       iSum = 0.

DO iCount = 1 TO 50:
     iSum =   iSum + iCount.
END.
DISPLAY iSum.
