program FuncionF;
var
    a, b: Real;

function F(x: Real): Real;
begin
    F := x * x * x * x * x + 1;
end;

begin
    Write('Ingrese a y b: ');
    Read(a, b);
    WriteLn(F(F(F(a)) + F(F(b))):3:3);
end.
