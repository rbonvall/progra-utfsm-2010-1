Ejercicios de la clase del 14 de abril
======================================

Factorial
---------
El problema computacional es el siguiente:

**Entrada**:
    un número entero ``n``.

**Salida**:
    ``n`` factorial (``n!``).

Entendiendo el problema
~~~~~~~~~~~~~~~~~~~~~~~
.. index:: factorial

El `factorial`_ de un número ``n``,
representado como ``n!``,
se define como el producto de todos los números naturales
de 1 a ``n``:

.. math::

    n! = 1\cdot 2\cdot\cdots\cdot n = \prod_{k=1}^n{k}.

.. _factorial: http://es.wikipedia.org/wiki/Factorial

La tarea del programa será calcular este producto.

El factorial de un número representa
el número de permutaciones (diferentes ordenamientos)
que pueden hacerse con esa cantidad de elementos.

Una pregunta que cabe hacerse es:
¿tiene sentido calcular el factorial de números menores que 1?
Es fácil notar que los factoriales de números positivos
satisfacen la relación:

.. math::
   
    n! = n\cdot (n - 1)!

Para hacer que esa identidad se mantenga,
conviene definir :math:`0! = 1`.
Para los números negativos,
la identidad no puede seguir cumpliéndose,
por lo que no tiene sentido definir el factorial
de números menores que cero.

Proponiendo una estrategia
~~~~~~~~~~~~~~~~~~~~~~~~~~

Diseñando el algoritmo
~~~~~~~~~~~~~~~~~~~~~~

El programa terminado
~~~~~~~~~~~~~~~~~~~~~
.. literalinclude:: programas/factorial.pas
   :linenos:


Tabla de multiplicar
--------------------
El problema computacional es el siguiente:

**Entrada**:
    no hay.

**Salida**:
    una `tabla de multiplicar`_.

.. _tabla de multiplicar: http://math2.org/math/general/es-multiplytable.htm

Entendiendo el problema
~~~~~~~~~~~~~~~~~~~~~~~

El programa terminado
~~~~~~~~~~~~~~~~~~~~~
.. literalinclude:: programas/tabla.pas
   :linenos:

Comentarios
-----------
.. include:: disqus.rst

