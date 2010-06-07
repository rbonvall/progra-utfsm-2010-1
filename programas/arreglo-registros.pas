program ArregloRegistros;
const
    N = 36;
    nroCertamenes = 3;
type
    Fecha = record
        dia: Integer;
        mes: Integer;
        ano: Integer
    end;
    Alumno = record
        nombre: String;
        apellido: String;
        nacimiento: Fecha;
        notas: Array[1..nroCertamenes] of Integer
    end;
var
    alumnos: Array[1..N] of Alumno;
    i, certamen: Integer;
begin
    for i := 1 to N do
    begin
        WriteLn('Ingrese datos del alumno ', i);
        with alumnos[i] do
        begin
            Write('Nombre: ');
            ReadLn(nombre);
            Write('Apellido: ');
            ReadLn(apellido);
            with nacimiento do
            begin
                Write('Fecha de nacimiento: ');
                Read(dia);
                Read(mes);
                Read(ano);
            end;
            for certamen := 1 to nroCertamenes do
            begin
                Write('Nota certamen ', certamen, ': ');
                ReadLn(notas[certamen]);
            end;
        end;
    end;
end.

