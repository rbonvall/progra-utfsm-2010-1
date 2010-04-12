Ejercicios de la clase del 12 de abril
======================================

En la clase aprendimos a trabajar con dígitos de números,
y lo aplicamos a la detección de palíndromos.

Palíndromos
-----------
El problema computacional es el siguiente:

**Entrada**:
    un número entero ``n``.

**Salida**:
    ``sí`` o ``no``,
    dependiendo si ``n`` es palíndromo o no.

Entendiendo el problema
~~~~~~~~~~~~~~~~~~~~~~~
.. index:: palíndromo

Un `palíndromo`_ es un número que se lee igual
de derecha a izquierda y de izquierda a derecha.

.. _palíndromo: http://es.wikipedia.org/wiki/Capicúa

Por ejemplo, los siguientes números son palíndromos:
28982, 1001, 666, 38183, 4774, 5, 0.
Los siguientes no lo son:
2631, 1010, 665, 38138, 271, 20.

Proponiendo una estrategia
~~~~~~~~~~~~~~~~~~~~~~~~~~
El primer problema es cómo obtener los dígitos de a uno.
La manera de hacerlo es usando los operadores 
``div`` y ``mod`` para extraer cada cifra.

El último dígito de un número
es el resto de su división por 10.
El resto de los dígitos
puede ser obtenido
primero dividiendo por una potencia de 10 apropiada,
y luego obteniendo el resto de la división por 10::

    142857 mod 10            {→ 7}
    142857 div 10 mod 10     {→ 5}
    142857 div 100 mod 10    {→ 8}
    142857 div 1000 mod 10   {→ 2}
    142857 div 10000 mod 10  {→ 4}
    142857 div 100000 mod 10 {→ 1}

Una estrategia posible es
ir comparando pares de dígitos,
uno obtenido de la izquierda y otro de la derecha,
y si se encuentra un par distinto,
descartar que el número sea palíndromo.

Este enfoque no es muy conveniente
pues si bien obtener la última cifra es sencillo,
la extracción de la primera es más engorrosa,
pues depende de cuántos dígitos tiene el número.

Una manera más simple de interpretar la definición de palíndromo es:
un número es palíndromo si es igual al número en orden inverso.
De este modo, el problema original se reduce a
construir el número en su versión invertida.

La estrategia para hacerlo
es ir extrayendo las cifras del número original desde la derecha
e irlas agregando a la versión invertida del número.

La iteración queda ejemplificada en el siguiente ruteo:

    ============= ====== ====== ====== ====== ====== ====== ======
    ``n``         142857
    ``resto``     142857  14285   1428    142     14      1      0
    ``ultimo``                7      5      8      2      4      1
    ``invertido``     0       7     75    758   7582  75824 758241
    ============= ====== ====== ====== ====== ====== ====== ======

En la variable ``invertido`` se va construyendo el número invertido.
En cada paso, lo que queda del número original
es descompuesto en su último dígito (``ultimo``)
y en el resto del número (``resto``).

Diseñando el algoritmo
~~~~~~~~~~~~~~~~~~~~~~
La médula del algoritmo es
el ciclo ilustrado en el ruteo de arriba.

La iteración es la siguiente::

    ultimo := resto mod 10;
    invertido := 10 * invertido + ultimo;
    resto := resto div 10

El ciclo debe terminar cuando ``resto`` llega a cero.
En ningún paso del algoritmo
es necesario saber cuántos dígitos tiene el número.

El programa terminado
~~~~~~~~~~~~~~~~~~~~~
.. literalinclude:: programas/palindromo.pas
   :linenos:

Notar que en la versión final
reemplazamos las apariciones del 10
por una constante llamada ``base``.
Esto hace que el programa sea más general
y más fácil de modificar.

Por ejemplo,
para hacer un programa que determine
si la representación hexadecimal (en base 16) de un número
es un palíndromo,
basta con reemplazar ``base = 10`` por ``base = 16``
en el programa de arriba.

Comentarios
-----------
.. include:: disqus.rst

