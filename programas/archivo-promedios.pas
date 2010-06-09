program ArchivoAlumnosAprobados;
type
    RegistroNotas = record
        nombre: String[30];
        apellido: String[30];
        notas: Array[1..3] of Integer;
    end;
    RegistroPromedios = record
        nombre: String[30];
        apellido: String[30];
        promedio: Integer;
    end;

var
    archivoNotas: File of RegistroNotas;
    archivoPromedios: File of RegistroPromedios;
    notasAlumno: RegistroNotas;
    promedioAlumno: RegistroPromedios;

begin
    Assign(archivoNotas, 'notas.dat');
    Assign(archivoPromedios, 'promedios.dat');
    Reset(archivoNotas);
    ReWrite(archivoPromedios);

    while not EOF(archivoNotas) do
    begin
        Read(archivoNotas, notasAlumno);

        {llenar el registro que sera escrito en el archivo de promedios}
        promedioAlumno.nombre := notasAlumno.nombre;
        promedioAlumno.apellido := notasAlumno.apellido;
        promedioAlumno.promedio := Round((notasAlumno.notas[1] +
                                          notasAlumno.notas[2] +
                                          notasAlumno.notas[3]) / 3);

        if promedioAlumno.promedio >= 55 then
            Write(archivoPromedios, promedioAlumno);
    end;

    Close(archivoNotas);
    Close(archivoPromedios);
end.

