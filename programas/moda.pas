program ModaDatos;
const
    maxDatos = 100;
var
    x: Array[1..maxDatos] of Real;
    cuenta: Array[1..maxDatos] of Integer;
    n: Integer;
    i, j: Integer;
    cuentaMayor, indiceMayor: Integer;
    moda: Real;
begin
    {entrada}
    Write('Cuantos datos va a ingresar? ');
    Read(n);
    if n > maxDatos then
        n := maxDatos;
    for i := 1 to n do
    begin
        Write('Dato ', i, ': ');
        Read(x[i])
    end;

    {llenar el arreglo "cuenta" con las frecuencias parciales}
    for i := 1 to n do
    begin
        cuenta[i] := 1;
        {ver si x[i] ya ha aparecido antes}
        for j := i - 1 downto 1 do
            if x[j] = x[i] then
            begin
                cuenta[i] := cuenta[j] + 1;
                break;
            end;
    end;

    {buscar la cuenta mayor y su indice}
    cuentaMayor := 0;
    indiceMayor := 0;
    for i := 1 to n do
        if cuenta[i] > cuentaMayor then
        begin
            cuentaMayor := cuenta[i];
            indiceMayor := i;
        end;

    {determinar la moda}
    moda := x[indiceMayor];

    {salida}
    WriteLn('La moda es ', moda:5:2);
end.

