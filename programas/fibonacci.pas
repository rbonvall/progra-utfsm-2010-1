program Fibonacci;
var
    n: Integer;
    actual, anterior: Integer;
    cuenta: Integer;
    suma: Integer;
begin
    {entrada}
    Write('Ingrese n: ');
    Read(n);

    {caso especial n = 0 se trata por separado}
    if n = 0 then
    begin
        WriteLn('F(0) = ', 0);
        exit
    end;

    {inicializar variables}
    actual := 1;
    anterior := 0;
    cuenta := 1;

    {iterar hasta el n-esimo numero de Fibonacci}
    while cuenta < n do
    begin
        suma := actual + anterior;
        anterior := actual;
        actual := suma;
        cuenta := cuenta + 1
    end;

    {salida}
    WriteLn('F(', n, ') = ', actual);
end.
