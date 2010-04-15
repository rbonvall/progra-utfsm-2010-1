program Espuma;
var
    a, b, c, d: Integer;
    t: Integer;
    i: Integer;
begin
    Read(a);
    Read(b);
    Read(c);
    Read(d);

    for i := 1 to 3 do
    begin
        t := c + d;
        c := (t - Abs(c - d)) div 2;
        d := t - c;

        if i > 2 then
            continue;

        t := b + c;
        b := (t - Abs(b - c)) div 2;
        c := t - b;

        if i > 1 then
            continue;

        t := a + b;
        a := (t - Abs(a - b)) div 2;
        b := t - a;
    end;

    WriteLn(a, ' ', b, ' ', c, ' ', d);
end.

{rutear con la entrada 4 2 1 3}
{rutear con la entrada 3 1 2 4}

