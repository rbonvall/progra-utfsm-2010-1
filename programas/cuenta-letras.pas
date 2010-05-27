program CuentaLetras;
type
    FrecuenciaLetras = Array['a'..'z'] of Integer;
var
    oracion: String;
    cuenta: FrecuenciaLetras;

procedure CalcularFrecuencias(oracion: String);
var
    letra: Char;
    i: Integer;
begin
    {inicializar frecuencias en cero}
    for letra := 'a' to 'z' do
        cuenta[letra] := 0;

    {recorrer la oracion y aumentar la cuenta}
    for i := 1 to Length(oracion) do
    begin
        if ('a' <= oracion[i]) and (oracion[i] <= 'z') then
           cuenta[oracion[i]] := cuenta[oracion[i]] + 1;
    end;
end;

procedure ImprimirFrecuencias();
var
    letra: Char;
begin
    for letra := 'a' to 'z' do
        if cuenta[letra] > 0 then
            WriteLn(letra, ': ', cuenta[letra]);
end;

begin
    Write('Escriba una oracion con letras minusculas: ');
    ReadLn(oracion);
    CalcularFrecuencias(oracion);
    ImprimirFrecuencias();
end.
