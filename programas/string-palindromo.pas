program StringPalindromo;
var
    palabra: String[32];
    esPalindromo: Boolean;
    i, j: Integer;
begin
    Write('Escriba una palabra: ');
    Read(palabra);

    i := 1;
    j := Length(palabra);
    esPalindromo := true;
    while (i < j) and esPalindromo do
    begin
        if palabra[i] <> palabra[j] then
            esPalindromo := false;
        i := i + 1;
        j := j - 1;
    end;

    if esPalindromo then
        WriteLn('"', palabra, '" es palindromo')
    else
        WriteLn('"', palabra, '" no es palindromo');
end.
