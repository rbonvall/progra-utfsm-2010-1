program Ambitos;
var
    w, x, y: Integer;

procedure P(y: Integer; z: Integer);
var
    v, w: Integer;
begin
    v := 5;
    w := 6;
    x := 7;
    z := 8;

    WriteLn('Dentro de P:');
    WriteLn('  v = ', v);
    WriteLn('  w = ', w);
    WriteLn('  x = ', x);
    WriteLn('  y = ', y);
    WriteLn('  z = ', z);
end;

begin
    w := 0;
    x := 1;
    y := 2;

    P(3, 4);

    WriteLn('Fuera de P:');
    WriteLn('  w = ', w);
    WriteLn('  x = ', x);
    WriteLn('  y = ', y);
end.

