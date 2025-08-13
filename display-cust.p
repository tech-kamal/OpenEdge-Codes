/* Find the first customer with NO-LOCK and handle errors */
/*
FIND FIRST Customer where state = "LA" NO-LOCK NO-ERROR.

IF AVAILABLE Customer THEN DO:
    MESSAGE "Customer No: " Customer.CustNum
            "Name is: " Customer.Name
        VIEW-AS ALERT-BOX INFO.
END.
ELSE DO:
    MESSAGE "Customer is not available"
        VIEW-AS ALERT-BOX ERROR.
END. */

/*
for each customer no-lock:
  display Customer with 2 col size 100 by 20.
end. */


find first customer where state = "ma" no-lock no-error.

if avail customer then
  do:
      display custnum  Name.
  end.
else
   do:
      display "Customer Not Found".
    end. 
