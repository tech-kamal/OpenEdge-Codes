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
END.
