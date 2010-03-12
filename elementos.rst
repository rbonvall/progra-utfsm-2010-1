Elementos de un algoritmo
=========================

Expresiones
-----------

.. index:: expresión

Una **expresión** es una combinación de valores y operaciones
que son evaluados durante la ejecución del algoritmo
para obtener un valor.
Por ejemplo, :math:`2 + 3` es una expresión
que, al ser evaluada, siempre entrega el valor :math:`5`.

En el ejemplo, :math:`b^2 - 4ac` es una expresión,
cuyo valor depende de qué valores tienen
:math:`a`, :math:`b` y :math:`c`
al momento de la evaluación.

Las diferentes partes de una expresión
también son expresiones por sí solas.
En el ejemplo, :math:`b^2`, :math:`b` y :math:`4ac`
son expresiones.

Asignaciones
------------

.. index:: asignación, variable

Cuando un algoritmo calcula valores,
se necesita ponerles un nombre para poder referirse a ellos
en pasos posteriores.
Es lo que hacemos en el paso 2 de nuestro algoritmo,
cuando calculamos el discriminante y lo llamamos :math:`Δ`.
Esto se llama una **asignación**,
y se representa así: ``nombre := expresión``.
Al nombre utilizado se le dice **variable**.

La asignación del ejemplo sería::

    Δ := b² − 4ac;

Condicionales
-------------

.. index:: condicional

A veces un algoritmo debe realizar pasos diferentes
bajo condiciones distintas.
Es lo que hacemos en el paso 3 del ejemplo:
decidimos que la ecuación no tiene soluciones
solamente cuando se cumple que :math:`Δ < 0`.
Esto se llama un **condicional**.

La condición que determina qué ejecutar
es una expresión, cuyo valor debe ser
verdadero o falso.

Ciclos
------

.. index:: ciclo

Un **ciclo** ocurre cuando
un algoritmo ejecuta los mismos pasos varias veces.
El ejemplo no tiene ciclos.

Entrada
-------

.. index:: entrada, lectura

Cuando un algoritmo necesita recibir un dato,
se representa así: ``Leer(variable)``.
Durante la ejecución, significa que el dato
queda guardado en la variable.

En el ejemplo, la entrada ocurre en el paso 1,
y puede ser representada así::

    Leer(a);
    Leer(b);
    Leer(c);

Salida
------

.. index:: salida, escritura

Una vez que el algoritmo ha resuelto el problema
para el que fue diseñado,
debe entregar sus resultados como un mensaje.
La salida se representa así:
``Escribir(mensaje)``.

En el ejemplo, cuando no existen soluciones,
la salida puede ser representada así::

    Escribir('No hay soluciones');

Cuando existe una única solución,
se puede incluirla en el mensaje::

    Escribir('La solución única es', x);

Comentarios
-----------
.. include:: disqus.rst

