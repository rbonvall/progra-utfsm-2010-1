program PromedioCiclo;
const
    nroNotas = 5;
var
    notas: Array[1..nroNotas] of Integer;
    i: Integer;
    suma: Integer;
begin
    Write('Ingrese sus ', nroNotas, ' notas: ');
    for i := 1 to nroNotas do
        Read(notas[i]);

    suma := 0;
    for i := 1 to nroNotas do
        suma := suma + notas[i];
    WriteLn('Su promedio es ', suma div nroNotas);
end.

