DEFINE VARIABLE iPay AS INTEGER     NO-UNDO.
DISP "Choose Your Payment Method: 1.Cash 2.Card 3.UPI 4.Other" WITH FRAME xam.
UPDATE iPay LABEL "Enter The Number: ".

CASE TRUE:
     WHEN iPay = 1 THEN
            DISP "Payment Method Cash.".
      WHEN iPay = 2 THEN
            DISP "Payment Method Card.".
      WHEN iPay = 3 THEN
            DISP "Payment Method UPI.".
      OTHERWISE
            DISP "Other Payment.".
END CASE.
