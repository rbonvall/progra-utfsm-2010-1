program Cartas;
type
    Alumno = record
        nombre: String[30];
        apellido: String[30];
        genero: Char;
        notas: Array[1..3] of Integer;
    end;
var
    archivoAlumnos: File of Alumno;
    archivoCarta: Text;
    a: Alumno;
    promedio: Integer;

begin
    Assign(archivoAlumnos, 'alumnos.dat');
    Reset(archivoAlumnos);

    while not EOF(archivoAlumnos) do
    begin
        Read(archivoAlumnos, a);

        Assign(archivoCarta, 'carta-' +
               a.nombre + '-' + a.apellido + '.txt');
        ReWrite(archivoCarta);

        promedio := Round((a.notas[1] + a.notas[2] + a.notas[3]) / 3);

        if a.genero = 'M' then
            WriteLn(archivoCarta, 'Estimado ', a.nombre, ',')
        else
            WriteLn(archivoCarta, 'Estimada ', a.nombre, ',');
        if promedio >= 55 then
            WriteLn(archivoCarta, 'usted ha aprobado')
        else
            WriteLn(archivoCarta, 'usted ha reprobado');
        WriteLn(archivoCarta, 'con promedio ', promedio);
        WriteLn(archivoCarta);
        WriteLn(archivoCarta, 'Saludos.');

        Close(archivoCarta);
    end;

    Close(archivoAlumnos);
end.
