program ImpuestoConCaseYTasa;
var
    sueldo: Integer;
    tasa: Real;
begin
    Write('Ingrese su sueldo: ');
    Read(sueldo);

    case sueldo of
    -MaxInt..999:
        tasa := 0;
    1000..1999:
        tasa := 0.5;
    2000..3999:
        tasa := 0.10;
    else
        tasa := 0.12;
    end;

    WriteLn('Impuesto a pagar: ', Trunc(tasa * sueldo))
end.
