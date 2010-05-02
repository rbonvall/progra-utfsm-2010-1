program PromedioSecuencia;
const
    maxNotas = 100;
var
    notas: Array[1..maxNotas] of Integer;
    i, n: Integer;
    suma: Integer;
begin
    WriteLn('Ingrese una secuencia de notas.');
    WriteLn('Para terminar, ingrese -1:');
    n := 0;
    repeat
        n := n + 1;
        Read(notas[n]);
    until (notas[n] = -1) or (n = maxNotas);
    if notas[n] = -1 then
        n := n - 1;

    suma := 0;
    for i := 1 to n do
        suma := suma + notas[i];
    WriteLn('El promedio es ', suma div n);
end.
        
