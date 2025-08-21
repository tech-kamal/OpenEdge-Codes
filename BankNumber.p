DEFINE VARIABLE iCode AS INTEGER     NO-UNDO.
UPDATE iCode LABEL "Enter You Post Code: ".

CASE TRUE:
         WHEN iCode = 1 THEN
             DO:
                    DISP "Manager".
             END.
          WHEN iCode = 2 THEN
             DO:
                    DISP "Clerk".
             END.
          WHEN iCode = 3 THEN
             DO:
                    DISP "Worker".
             END.
          OTHERWISE
              DO:
                     DISP "Invailid Input.".
              END.
END CASE.
