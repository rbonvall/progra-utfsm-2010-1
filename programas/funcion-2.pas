program FuncionG;
var
    a, b: Real;

function G(x: Real): Real;
var
    producto: Real;
    i: Integer;
begin
    producto := 1;
    for i := 1 to 99 do
        producto := producto * x;
    G := producto + 1;
end;

begin
    Write('Ingrese a y b: ');
    Read(a, b);
    WriteLn(G(G(G(a)) + G(G(b))):3:3);
end.
