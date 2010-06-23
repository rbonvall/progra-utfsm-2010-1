program ArchivoTextoEscribir;
var
    a: Text;
    i: Integer;
begin
    Assign(a, 'ejemplo.txt');
    ReWrite(a);

    for i := 9 to 17 do
    begin
        Write(a, 'Cuadrado de ', i);
        WriteLn(a, ' es ', i * i);
    end;

    Close(a);
end.
    
