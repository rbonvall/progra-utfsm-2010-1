program Circulo;
const
    PI = 3.14159;
var
    radio: Real;
begin
    {entrada}
    Write('Radio del circulo: ');
    Read(radio);

    {salida}
    WriteLn('Perimetro: ', 2 * PI * radio);
    WriteLn('Area: ', PI * Sqr(radio));
end.
