DEFINE VARIABLE iDayNum AS INTEGER     NO-UNDO.
DEFINE VARIABLE cDayName AS CHARACTER   NO-UNDO.
UPDATE iDayNum LABEL "Enter A Number (1-7)".

CASE iDayNum:
        WHEN 1 THEN 
            DO:
                 DISPLAY "Sunday".
            END.
         WHEN 2 THEN 
            DO:
                 DISPLAY "Monday".
            END.
         WHEN 3 THEN 
            DO:
                 DISPLAY "Tuesday".
            END.
         WHEN 4 THEN 
            DO:
                 DISPLAY "Wednesday".
            END.
          WHEN 5 THEN 
            DO:
                 DISPLAY "Thursday".
            END.
         WHEN 6 THEN 
            DO:
                 DISPLAY "Friday".
            END.
         WHEN 7 THEN 
            DO:
                 DISPLAY "Saturday".
            END.
        OTHERWISE 
        DO:
              DISP "Invailid Input".
        END.
END CASE.
