program DesviacionEstandar;
const
    maxDatos = 100;
var
    x: Array[1..maxDatos] of Real;
    n: integer;
    i: Integer;
    suma, promedio, sumaCuadrados, desviacion: Real;
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

    {calculo del promedio}
    suma := 0.0;
    for i := 1 to n do
        suma := suma + x[i];
    promedio := suma / n;

    {calculo de la suma de cuadrados de las diferencias}
    sumaCuadrados := 0.0;
    for i := 1 to n do
        sumaCuadrados := sumaCuadrados + Sqr(x[i] - promedio);

    {calculo de la desviacion estandar}
    desviacion := Sqrt(sumaCuadrados / n);

    {salida}
    WriteLn('La desviacion estandar es ', desviacion:5:2);

end.
