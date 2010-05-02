program Promedio;
var
    x: Array[1..5] of Integer;
begin
    Write('Ingrese sus cinco notas: ');
    Read(x[1]);
    Read(x[2]);
    Read(x[3]);
    Read(x[4]);
    Read(x[5]);
    WriteLn('Su promedio es ',
            (x[1] + x[2] + x[3] + x[4] + x[5]) div 5);
end.

