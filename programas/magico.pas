program CuadradoMagico;
const
    N = 3;
var
    valores: Array[1..N, 1..N] of Integer;
    sumaFilas: Array[1..N] of Integer;
    sumaColumnas: Array[1..N] of Integer;
    sumaDiagonales: Array[1..2] of Integer;
    suma: Integer;
    i, j: Integer;
begin
    {entrada}
    for i := 1 to N do
        for j := 1 to N do
        begin
            Write('Ingrese valor ', i, ', ', j, ': ');
            Read(valores[i, j]);
        end;

    {inicializar sumas}
    for i := 1 to N do
    begin
        sumaFilas[i] := 0;
        sumaColumnas[j] := 0;
    end;
    sumaDiagonales[1] := 0;
    sumaDiagonales[2] := 0;

    {calcular sumas por filas y columnas}
    for i:= 1 to N do
    begin
        for j := 1 to N do
        begin
            sumaFilas[i] := sumaFilas[i] + valores[i, j];
            sumaColumnas[j] := sumaColumnas[i] + valores[i, j];
        end;
        sumaDiagonales[1] := sumaDiagonales[1] + valores[i, i];
        sumaDiagonales[2] := sumaDiagonales[2] + valores[i, N - i + 1];
    end;

    {revisar si todas las sumas dieron el mismo valor}
    suma := sumaDiagonales[1];
    if sumaDiagonales[2] <> suma then
    begin
        WriteLn('No es magico');
        Exit;
    end;
    for i := 1 to N do
        if (sumaFilas[i] <> suma) or (sumaColumnas[i] <> suma) then
        begin
            WriteLn('No es magico');
            Exit;
        end;
    WriteLn('Si es magico')
end.

