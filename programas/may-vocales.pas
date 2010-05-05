program MayusculasYVocales;
var
    oracion: String;
    c: Char;
    i: Integer;
    nroVocales: Integer;
begin
    Write('Escriba una oración: ');
    Read(oracion);

    nroVocales := 0;
    for i := 1 to Length(oracion) do
    begin
        c := oracion[i];
        if ('a' <= c) and (c <= 'z') then
        begin
            c := Chr(Ord(c) - Ord('a') + Ord('A'));
            oracion[i] := c;
        end;
        case c of
        'A', 'E', 'I', 'O', 'U':
            nroVocales := nroVocales + 1;
        end;
    end;

    WriteLn('"', oracion, '" tiene ', nroVocales, ' vocales');
end.
