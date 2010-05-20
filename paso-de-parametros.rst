Paso de parámetros
==================

En las funciones y los procedimientos,
existen dos mecanismos diferentes
para pasar cada uno de los parámetros
al llamar la función:
el paso por valor
y el paso por referencia.

Paso por valor
--------------
.. index:: paso por valor

::

    procedure P(x: Integer);
    begin
        WriteLn(x);
        x := 10;
        WriteLn(x);
    end.

    {...}

    x := 1;
    P(x + 2)
    WriteLn(x);



.. include:: disqus.rst

