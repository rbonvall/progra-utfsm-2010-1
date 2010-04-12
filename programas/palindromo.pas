program Palindromo;
const
    base = 10;
var
    n: Integer;
    ultimo, resto, invertido: Integer;
begin
    Write('Ingrese un numero: ');
    Read(n);

    resto := n;
    invertido := 0;
    while resto > 0 do
    begin
        ultimo := resto mod base;
        invertido := base * invertido + ultimo;
        resto := resto div base
    end;

    if n = invertido then
        WriteLn(n, ' es palindromo')
    else
        WriteLn(n, ' no es palindromo')
end.
