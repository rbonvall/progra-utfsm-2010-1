program Circulo;
const
    pi = 3.14159;
var
    radio: Real;
begin
    Write('Ingrese el radio: ');
    Read(radio);
    WriteLn('El perimetro es ', 2 * pi * radio);
    WriteLn('El area es ', pi * radio * radio);
end.

