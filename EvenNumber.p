DEFINE VARIABLE iEven AS INTEGER     NO-UNDO.
DO iEven = 1 TO 20:
     IF iEven MOD 2 = 0 THEN
     DO:
               DISP iEven.
               PAUSE.
     END.
END.
