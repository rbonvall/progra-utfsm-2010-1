program Bisiesto;
var
    year: Integer;
begin
    Read(year);
    if (year mod 4 = 0) and ((year mod 100 <> 0) or (year mod 400 = 0)) then
        WriteLn(366)
    else
        WriteLn(365);
end.

