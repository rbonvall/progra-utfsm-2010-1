program Impuesto;
var
    sueldo, impuesto: Integer;
begin
    Write('Ingrese su sueldo: ');
    Read(sueldo);

    if sueldo < 1000 then
        impuesto := 0
    else if sueldo < 2000 then
        impuesto := Trunc(0.05 * sueldo)
    else if sueldo < 4000 then
        impuesto := Trunc(0.10 * sueldo)
    else
        impuesto := Trunc(0.12 * sueldo);

    WriteLn('Impuesto a pagar: ', impuesto)
end.
