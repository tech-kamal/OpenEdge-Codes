DEFINE VARIABLE iMark AS INTEGER     NO-UNDO.
UPDATE iMark LABEL "Enter Your Marks: ".

CASE TRUE:
    WHEN iMark >= 90 THEN
        DISPLAY "Your Grade Is: A".
        
    WHEN iMark >= 80 AND iMark < 90 THEN
        DISPLAY "Your Grade Is: B".
        
    WHEN iMark >= 65 AND iMark < 80 THEN
        DISPLAY "Your Grade Is: C".
        
    WHEN iMark >= 35 AND iMark < 65 THEN
        DISPLAY "Your Grade Is: D".
        
    OTHERWISE
        DISPLAY "You Have Failed.".
END CASE.
