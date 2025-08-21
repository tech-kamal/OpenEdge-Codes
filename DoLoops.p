/* DEFINE VARIABLE iCount AS INTEGER     NO-UNDO.
DO iCount = 1 TO 10: 
   DISP iCount.
   PAUSE.
END.  */

/*
DEFINE VARIABLE iCount AS INTEGER     NO-UNDO.
DEFINE VARIABLE iSum AS INTEGER     NO-UNDO.
ASSIGN 
       iSum = 0.

DO iCount = 1 TO 50:
     iSum =   iSum + iCount.
END.
DISPLAY iSum.  */
 /*
DEFINE VARIABLE iEven AS INTEGER     NO-UNDO.
DO iEven = 1 TO 20:
     IF iEven MOD 2 = 0 THEN
     DO:
               DISP iEven.
               PAUSE.
     END.
END.      */
 /*
DEFINE VARIABLE iNum AS INTEGER     NO-UNDO.
DEFINE VARIABLE iCount AS INTEGER     NO-UNDO.
DEFINE VARIABLE iFactorial AS INTEGER     NO-UNDO.

PROMPT-FOR iNum.
ASSIGN iNum
               iFactorial = 1.

IF iNum = 0 OR iNum = 1 THEN
DO:
         DISP "Factorial : "  iFactorial.
         LEAVE.
END.
ELSE 
DO iCount = 1 TO iNum:
        iFactorial = iFactorial * iCount.
        DISP iFactorial.
END.   */
/*
DEFINE VARIABLE iNum AS INTEGER     NO-UNDO.
DEFINE VARIABLE iTable AS INTEGER     NO-UNDO.
DEFINE VARIABLE iCount AS INTEGER     NO-UNDO.
PROMPT-FOR iNum.
ASSIGN iNum  
               iTable = 1.

DO iCount = 1 TO 10:
     iTable = iCount * iNum.
     DISP iCount iTable.
     PAUSE.      
END.       */




               















