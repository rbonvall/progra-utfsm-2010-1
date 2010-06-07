program Ejemplo;
var
    x: Integer;
    y: Integer;

function F(a: Integer; var b: Integer): Integer;
var
    c: Integer;
begin
    a := 15;
    b := 20;
    c := a + b;
    F := 2 * c;
end;

begin
    x := 2;
    y := 3;
    x := F(2 * x, y);
    WriteLn('x = ', x, ', y = ', y)
end.
