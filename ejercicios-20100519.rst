Ejercicios de la clase del 19 de mayo
=====================================

Ruteo 1
-------
Programa::

    program P1;
    var
        x, y, z: Integer;

    function F(a: Integer; var b: Integer): Integer;
    var
        c: Integer;
    begin
        c := 2 * a;
        b := c + 5;
        a := 20 div b;
        F := a + b + c;
    end;

    begin
        x := -1;
        y := 1;
        z := F(x, y) mod 2;
        WriteLn(x + y + z);
    end.

Ruteo:

    +-----------------+-----------------------+--------+
    | Globales        | Locales de ``F``      |        |
    +-----+-----+-----+-----+-----+-----+-----+--------+
    |``x``|``y``|``z``|``a``|``b``|``c``|``F``| Salida |
    +=====+=====+=====+=====+=====+=====+=====+========+
    |  -1 |     |     |     |     |     |     |        |
    +-----+-----+-----+-----+-----+-----+-----+--------+
    |     |   1 |     |     |     |     |     |        |
    +-----+-----+-----+-----+-----+-----+-----+--------+
    |     |     |  -1 |   1 |     |     |     |        |
    +-----+-----+-----+-----+-----+-----+-----+--------+
    |     |     |     |     |     |  -2 |     |        |
    +-----+-----+-----+-----+-----+-----+-----+--------+
    |     |   3 |     |     |   3 |     |     |        |
    +-----+-----+-----+-----+-----+-----+-----+--------+
    |     |     |     |   6 |     |     |     |        |
    +-----+-----+-----+-----+-----+-----+-----+--------+
    |     |     |     |     |     |     |   7 |        |
    +-----+-----+-----+-----+-----+-----+-----+--------+
    |     |     |   1 |     |     |     |     |        |
    +-----+-----+-----+-----+-----+-----+-----+--------+
    |     |     |     |     |     |     |     | ``3``  |
    +-----+-----+-----+-----+-----+-----+-----+--------+

El concepto importante para entender este ruteo
es el paso por referencia.
Al modificar el valor de la variable ``b`` dentro de la función,
simultáneamente es modificado el valor de la variable pasada como argumento
(en este caso, ``y``).

Ruteo 2
-------
Programa::

    program P2;
    var
        x, y: Integer;

    function G(y, z: Integer): Boolean;
    begin
        x := -10;
        y := z mod 3;
        z := x * y;
        G := y < z;
    end;

    begin
        x := 15;
        y := 20;
        if G(x, y) then
            WriteLn('azul')
        else
            WriteLn('rojo');
    end.

Ruteo:

    +-----------+-----------------+--------+
    | Globales  |Locales de ``G`` |        |
    +-----+-----+-----+-----+-----+--------+
    |``x``|``y``|``y``|``z``|``G``| Salida |
    +=====+=====+=====+=====+=====+========+
    |  15 |     |     |     |     |        |
    +-----+-----+-----+-----+-----+--------+
    |     |  20 |     |     |     |        |
    +-----+-----+-----+-----+-----+--------+
    |     |     |  15 |  20 |     |        |
    +-----+-----+-----+-----+-----+--------+
    | -10 |     |     |     |     |        |
    +-----+-----+-----+-----+-----+--------+
    |     |     |   2 |     |     |        |
    +-----+-----+-----+-----+-----+--------+
    |     |     |     | -20 |     |        |
    +-----+-----+-----+-----+-----+--------+
    |     |     |     |     |false|        |
    +-----+-----+-----+-----+-----+--------+
    |     |     |     |     |     |``rojo``|
    +-----+-----+-----+-----+-----+--------+

Contador de letras
------------------
**Problema:**
hacer un programa en el que el usuario ingrese una oración
(en minúsculas, para simplificar)
y que entregue como salida
cuántas veces aparece cada letra en la oración.

El programa es el siguiente:

.. literalinclude:: programas/cuenta-letras.pas
   :linenos:

La tabla de frecuencias es un arreglo global
cuyos índices son caracteres.
El valor de ``cuenta[letra]`` representa
cuántas veces aparece ``letra`` en ``oracion``.

**Tarea:** modificar el programa para que considere también las letras mayúsculas.


.. include:: disqus.rst

