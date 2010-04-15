program SerONoSer;
var
    ser: Boolean;
    n: Integer;
    i: Integer;
    c: Integer;
begin
    Read(n);
    ser := false;
    c := 0;
    i := 2 * n;
    repeat
        ser := not ser;
        if ser then
            c := c + 2 * n - i + 1;
        i := i - 1;
        Write(i, ' ');
    until i <= 0;
    WriteLn(c);
end.

{rutear con n := 4}
{que hace?}
{que hace cuando n := 0?}

