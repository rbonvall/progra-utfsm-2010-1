program ArchivoEscribirYLeer;
type
    Punto = record
        x: Real;
        y: Real;
    end;

var
    p: Punto;
    i: Integer;
    archivoPuntos: File of Punto;

begin
    Assign(archivoPuntos, 'puntos.dat');
    ReWrite(archivoPuntos);

    {escribir un archivo con los puntos de una parabola}
    for i := 0 to 100 do
    begin
        p.x := -2.0 + i * 0.04;
        p.y := Sqr(p.x);
        Write(archivoPuntos, p);
    end;

    {volver al principio del archivo y mostrar los puntos}
    Reset(archivoPuntos);
    while not EOF(archivoPuntos) do
    begin
        Read(archivoPuntos, p);
        WriteLn('(', p.x:2:2, ', ', p.y:2:2, ')');
    end;

    Close(archivoPuntos);
end.
     
