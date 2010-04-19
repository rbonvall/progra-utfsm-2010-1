program Caracter;
var
    c: Char;
begin
    Write('Ingrese un caracter: ');
    Read(c);

    case c of

    'a'..'z':
    begin
        WriteLn(c, ' es una letra minuscula');
        WriteLn('Es la letra numero ', Ord(c) - Ord('a') + 1);
        WriteLn('Su mayuscula es ', Ord(c) - Ord('a') + Ord('A'));
    end;

    'A'..'Z':
    begin
        WriteLn(c, ' es una letra mayuscula');
        WriteLn('Es la letra numero ', Ord(c) - Ord('A') + 1);
        WriteLn('Su minuscula es ', Ord(c) - Ord('A') + Ord('a'));
    end;

    '0'..'9':
    begin
        WriteLn(c, ' es un numero');
        WriteLn('Su cuadrado es ', Sqr(Ord(c) - Ord('0')));
    end;

    '#':
    begin
        WriteLn('Miau');
    end;

    else
        WriteLn(c, ' no es ni letra ni numero');
    end;
end.

