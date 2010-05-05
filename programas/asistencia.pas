program ControlAsistencia;
const
    nroAlumnos = 3;
    nroClases = 5;
var
    asistencia: Array[1..nroAlumnos, 1..nroClases] of Boolean = (
        {clase       1     2      3      4      5    }
        {alumno 1} (true,  true,  false, false, false),
        {alumno 2} (true,  false, true,  true,  true ),
        {alumno 3} (true,  true,  false, true,  false));
    totalAsistencia: Array[1..nroAlumnos] of Integer;
    alumno, clase: Integer;
begin
    for alumno := 1 to nroAlumnos do
    begin
        totalAsistencia[alumno] := 0;
        for clase := 1 to nroClases do
            if asistencia[alumno][clase] then
                totalAsistencia[alumno] := totalAsistencia[alumno] + 1;
    end;

    for alumno := 1 to nroAlumnos do
        WriteLn('El alumno ', alumno, ' tuvo una asistencia de ',
                totalAsistencia[alumno] * 100 / nroClases: 1 : 2, '%');
end.

