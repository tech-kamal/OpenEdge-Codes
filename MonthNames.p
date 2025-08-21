DEFINE VARIABLE iNum AS INTEGER     NO-UNDO.
UPDATE iNum LABEL "Enter The Month Number: (1-12) ".

CASE TRUE:
     WHEN iNum = 1 THEN
         DO:
                   DISP "Your Month Name is Jan.".
         END.
      WHEN iNum = 2 THEN
         DO:
                   DISP "Your Month Name is Feb.".
         END.
      WHEN iNum = 3 THEN
         DO:
                   DISP "Your Month Name is Mar.".
         END.
       WHEN iNum = 4 THEN
         DO:
                   DISP "Your Month Name is April.".
         END.
       WHEN iNum = 5 THEN
         DO:
                   DISP "Your Month Name is May.".
         END.
       WHEN iNum = 6 THEN
         DO:
                   DISP "Your Month Name is Jun.".
         END.
       WHEN iNum = 7 THEN
         DO:
                   DISP "Your Month Name is Jul.".
         END.
       WHEN iNum = 8 THEN
         DO:
                   DISP "Your Month Name is Aug.".
         END.
       WHEN iNum = 9 THEN
         DO:
                   DISP "Your Month Name is Sep.".
         END.
       WHEN iNum = 10 THEN
         DO:
                   DISP "Your Month Name is Oct.".
         END.
       WHEN iNum = 11 THEN
         DO:
                   DISP "Your Month Name is Num.".
         END.
      WHEN iNum = 12 THEN
         DO:
                   DISP "Your Month Name is Dec.".
         END.
         OTHERWISE 
         DO:
             DISP  "Invalid Input.".
         END.
         
END CASE.
