program SentenciaWith;
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
    with a do
    begin
        nombre := 'Perico';
        apellido := 'Los Palotes';
        with nacimiento do
        begin
            dia := 17;
            mes := 11;
            ano := 1990;
        end;
        notas[1] := 50;
        notas[2] := 31;
        notas[3] := 78;
    end;
end.

