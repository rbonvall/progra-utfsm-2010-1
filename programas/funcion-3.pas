program FuncionH;
var
    a, b: Real;

function Potencia(x: Real; n: Integer): Real;
var
    i: Integer;
begin
    Potencia := 1;
    for i := 1 to n do
        Potencia := Potencia * x;
end;

function H(x: Real): Real;
begin
    H :=      Potencia(x, 99) - 5 * Potencia(x, 79) +
         10 * Potencia(x, 59) - 5 * Potencia(x, 29) + 1;
end;

begin
    Write('Ingrese a y b: ');
    Read(a, b);
    WriteLn(H(H(H(a)) + H(H(b))):3:3);
end.
