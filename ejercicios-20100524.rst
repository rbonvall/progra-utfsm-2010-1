Ejercicios de la clase del 24 de mayo
=====================================

Palíndromos
-----------
El problema computacional es el siguiente:

**Entrada**:
    una palabra.

**Salida**:
    ``sí`` o ``no``,
    dependiendo si la palabra es un `palíndromo`_ o no.

.. _palíndromo: http://es.wikipedia.org/wiki/Pal%C3%ADndromo

La estrategia es recorrer el string
simultáneamente desde adelante hacia atrás
y desde atrás hacia adelante,
e ir comprobando que los caracteres correspondientes
son iguales.

Para ello, usamos dos índices ``i`` y ``j``,
que inicialmente toman los valores ``0`` y ``Length(palabra)``.
Dentro de un ciclo,
vamos aumentando ``i`` y disminuyendo ``j`` en cada iteración.

El ciclo termina cuando ``i`` y ``j`` se encuentren,
o cuando se encuentre un par de caracteres correspondientes
que sean distintos (en cuyo caso la palabra no es un palíndromo).

.. literalinclude:: programas/string-palindromo.pas
   :linenos:



.. include:: disqus.rst

