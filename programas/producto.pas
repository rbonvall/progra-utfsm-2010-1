program Producto;
var
    m, n: Integer;
    p: Integer;
begin
    Read(m);
    Read(n);
    p := 0;
    while m > 0 do
    begin
        p := p + n;
        m := m - 1
    end;
    WriteLn(p)
end.

