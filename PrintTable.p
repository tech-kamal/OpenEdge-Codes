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
END.
