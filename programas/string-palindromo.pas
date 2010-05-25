program Palindromo;
var
    palabra: String;

function esPalindromo(palabra: String): Boolean;
var
    i, j: Integer;
    resultado: Boolean;
begin
    i := 1;
    j := Length(palabra);
    resultado := true;
    while (i < j) and resultado do
    begin
        if palabra[i] <> palabra[j] then
            resultado := false;
        i := i + 1;
        j := j - 1;
    end;
    esPalindromo := resultado;
end;

begin
    Write('Escriba una palabra: ');
    Read(palabra);

    if esPalindromo(palabra) then
        WriteLn('"', palabra, '" es palindromo')
    else
        WriteLn('"', palabra, '" no es palindromo');
end.

