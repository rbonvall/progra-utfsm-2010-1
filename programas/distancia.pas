program DistanciaPuntos;
type
    Punto = record
        x, y, z: Real;
    end;
var
    p1, p2: Punto;

function Distancia(a: Punto; b: Punto): Real;
var
    dif: Punto;
begin
    dif.x := a.x - b.x;
    dif.y := a.y - b.y;
    dif.z := a.z - b.z;
    Distancia := Sqrt(Sqr(dif.x) + Sqr(dif.y) + Sqr(dif.z));
end;

begin
    Write('Ingrese las coordenadas del primer punto: ');
    Read(p1.x);
    Read(p1.y);
    Read(p1.z);
    Write('Ingrese las coordenadas del segundo punto: ');
    Read(p2.x);
    Read(p2.y);
    Read(p2.z);
    WriteLn('La distancia entre los puntos es ', Distancia(p1, p2):2:2);
end.
