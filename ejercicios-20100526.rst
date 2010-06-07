Ejercicios de la clase del 26 de mayo
=====================================

Problema de Josefo
------------------
El `problema de Josefo`_ es el siguiente:
:math:`n` personas están en un círculo,
y son ejecutadas en orden
contando cada :math:`m` personas;
el que queda solo al final es el sobreviviente.
Dados :math:`n` y :math:`m`,
¿quién es el sobreviviente?

.. _problema de Josefo: http://es.wikipedia.org/wiki/Problema_de_Flavio_Josefo

Para resolver el problema,
hay que simular las ejecuciones
marcándolas en un arreglo.

El programa es el siguiente:

.. literalinclude:: programas/josefo.pas
   :linenos:

El programa tiene dos dificultades:
hay que recorrer el arreglo como si fuera un círculo
(volviendo al principio cuando llega al final),
y hay que saltarse a las personas que ya están ejecutadas.

El recorrido circular se hace detectando cuándo el índice ``i``
se pasa de largo del final del arreglo,
y asignándole ``1`` cuando eso ocurre.

Para saltarse a las personas ejecutadas,
se avanza el índice ``i`` dentro de un ciclo
(en este caso un ``repeat``)
hasta que se encuentra a la siguiente persona viva.

Cruce de cables
---------------

(por escribir)

.. include:: disqus.rst

