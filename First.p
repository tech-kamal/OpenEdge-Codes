def var iNumber as int no-undo.
prompt-for iNumber.
assign iNumber.

if iNumber mod 2 = 0 then 
  Do:
     Message "Number Is Even." view-as alert-box.
  end.
 else
  Do:
     Message "Number Is Odd." view-as alert-box.
  end.
   
