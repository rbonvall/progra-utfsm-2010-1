program OrdenInverso;
const
    n = 10;
var
    datos: Array[1..n] of Integer;
    i: Integer;
begin
    WriteLn('Ingrese ', n, ' valores: ');
    for i := 1 to n do
        Read(datos[i]);
    WriteLn('Los datos en orden inverso son: ');
    for i := n downto 1 do
        WriteLn(datos[i]);
end.

