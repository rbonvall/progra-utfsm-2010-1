program WriteReal;
var x: Real;
begin
    x := 15.67;      
    WriteLn(x);      { 1.567000000000000e+01} 
    WriteLn(x:10);   { 1.567e+01}             
    WriteLn(x:4);    { 1.6e+01}               
    WriteLn(x:2);    { 1.6e+01}               
    WriteLn(x:8:2);  {   15.67}               
    WriteLn(x:4:2);  {15.67}                  
    WriteLn(x:4:1);  {15.7}                   
    WriteLn(x:0:2);  {15.67}                  
    WriteLn(x:0:0);  {16}                     
end.
