program ValorAbsoluto;
var
    n, a: Integer;
begin
    Write('Ingrese un numero: ');
    Read(n);

    if n < 0 then
        a := -n
    else
        a := n;

    WriteLn('El valor absoluto de ', n, ' es ', a);
end.
