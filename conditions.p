/*
For Each Customer No-lock by Customer.Name DESCENDING:
   disp customer.custnum Customer.Name with frame frame1.
 end.  */
 /*
 def var cLetter as char no-undo initial "S".
 
 for each customer no-lock where customer.name begins cLetter by customer.name:
    display Customer with 2 col frame frame1 size 100 by 20.
 end. */
 
 /*
 def var iCount as int no-undo.
 do iCount = 1 to 10:
   find next Customer no-lock.
   display Customer with 2 col frame frame1 size 100 by 20.
   Pause.
 end.  */
 
 
/* Prompt for a customer number and display details if found */

DEFINE VARIABLE iNum AS INTEGER NO-UNDO.

/* Prompt user for the customer number */
PROMPT-FOR iNum.
ASSIGN iNum.

/* Safely find the customer record */
FIND Customer NO-LOCK WHERE Customer.CustNum = iNum NO-ERROR.

IF AVAILABLE Customer THEN DO:
    MESSAGE "Customer No: " Customer.CustNum
            "Name: " Customer.Name
        VIEW-AS ALERT-BOX INFO.
END.
ELSE DO:
    MESSAGE "Customer with number" iNum "is not available."
        VIEW-AS ALERT-BOX ERROR.
END.
