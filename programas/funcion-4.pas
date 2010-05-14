program FuncionAPares;
const
    N = 10;
var
    valores: Array[1..N] of Real;
    resultados: Array[1..N - 1] of Real;

function K(x: Real): Real;
begin
    K := Sqr(x) - x + 1
end;

procedure LeerValores(m: Integer);
var
    i: Integer;
begin
    for i := 1 to m do
    begin
        Write('Ingrese valor ', i, ': ');
        Read(valores[i]);
    end;
end;

procedure CalcularResultados(m: Integer);
var
    i: Integer;
    a, b: Real;
begin
    for i := 1 to m do
    begin
        a := valores[i];
        b := valores[i + 1];
        resultados[i] := K(K(K(a)) + K(K(b)));
    end;
end;

procedure ImprimirResultados(m: Integer);
var
    i: Integer;
begin
    for i := 1 to m do
        WriteLn(resultados[i]:3:3);
end;

begin
    LeerValores(N);
    CalcularResultados(N - 1);
    ImprimirResultados(N - 1)
end.

