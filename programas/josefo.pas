program Josefo;
const
    TamanoArreglo = 1000;
var
    n, m: Integer;


{dados el n (numero de personas) y el m (cada cuantas
 personas son ejecutadas), entrega quien es el sobreviviente}
function Sobreviviente(n, m: Integer): Integer;
var
    vivo: Array[1..TamanoArreglo] of Boolean;
    ejecucion, cuenta, i: Integer;
begin
    {inicialmente, todos estan vivos}
    for i := 1 to n do
        vivo[i] := True;

    {hacer n - 1 ejecuciones}
    i := 0;
    for ejecucion := 1 to n - 1 do
    begin
        {contar m vivos}
        for cuenta := 1 to m do
            {avanzar hasta el siguiente vivo}
            repeat
                i := i + 1;
                {si llegamos al final, volver al principio}
                if i > n then
                    i := 1;
            until vivo[i];

        {ejecutarlo}
        vivo[i] := False;
    end;

    {encontrar al que sobrevivio}
    for i := 1 to n do
        if vivo[i] then
        begin
            Sobreviviente := i;
            break;
        end;
end;

begin
    Write('Ingrese n: ');
    Read(n);
    Write('Ingrese m: ');
    Read(m);
    WriteLn('El sobreviviente es ', Sobreviviente(n, m))
end.

