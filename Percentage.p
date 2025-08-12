DEFINE VARIABLE dPct     AS DECIMAL   NO-UNDO.
DEFINE VARIABLE iMath    AS INTEGER   NO-UNDO.
DEFINE VARIABLE iHindi   AS INTEGER   NO-UNDO.
DEFINE VARIABLE iEnglish AS INTEGER   NO-UNDO.

PROMPT-FOR iMath iHindi iEnglish.
          Assign iMath iHindi iEnglish. 
dPct = (iMath + iHindi + iEnglish) / 3.0.

/* Determine Grade */
IF dPct >= 80 THEN
    MESSAGE "Your Percentage Is: " dPct "%" SKIP
            "Your Grade Is: A."
        VIEW-AS ALERT-BOX.
ELSE IF dPct >= 70 THEN
    MESSAGE "Your Percentage Is: " dPct "%" SKIP
            "Your Grade Is: B."
        VIEW-AS ALERT-BOX.
ELSE IF dPct >= 59 THEN
    MESSAGE "Your Percentage Is: " dPct "%" SKIP
            "Your Grade Is: C."
        VIEW-AS ALERT-BOX.
ELSE IF dPct >= 45 THEN
    MESSAGE "Your Percentage Is: " dPct "%" SKIP
            "Your Grade Is: D."
        VIEW-AS ALERT-BOX.
ELSE
    MESSAGE "Your Percentage Is: " dPct "%" SKIP
            "You are Fail."
        VIEW-AS ALERT-BOX.

   
    
