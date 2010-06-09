program ArchivoEscribir;
var
    a: File of Integer;
    x: Integer;
begin
    Assign(a, 'numeros.dat');
    ReWrite(a);

    Write('Cuantos numeros va a ingresar: ');
    Read(n);

    for i := 1 to n do
    begin
        Write('Ingrese numero ', i, ': ');
        Read(x);
        Write(a, x);
    end;

    Close(a);
end.

