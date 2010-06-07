program RegistroAlumno;
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
        notas: Array[1..3] of Integer
    end;
var
    a: Alumno;
begin
    a.nombre := 'Perico';
    a.apellido := 'Los Palotes';
    a.nacimiento.dia := 17;
    a.nacimiento.mes := 11;
    a.nacimiento.ano := 1990;
    a.notas[1] := 50;
    a.notas[2] := 31;
    a.notas[3] := 78;
end.

