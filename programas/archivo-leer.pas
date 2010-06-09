program ArchivoLeer;
var
    a: File of Integer;
    x: Integer;
begin
    Assign(a, 'numeros.dat');
    Reset(a);

    while not EOF(a) do
    begin
        Read(a, x);
        WriteLn('Dato: ', x)
    end;

    Close(a);
end.

