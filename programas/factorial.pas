program Factorial;
var
    n, k: Integer;
    producto: LongInt;
begin
    Write('Ingrese n: ');
    ReadLn(n);

    producto := 1;
    for k := 1 to n do
        producto := producto * k;

    WriteLn(n, '! = ', producto)
end.
    
