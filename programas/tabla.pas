program Tabla;
var
    i, j: Integer;
begin
    for i := 1 to 10 do
    begin
        for j := 1 to 10 do
            Write(i * j: 4);
        WriteLn;
    end
end.
