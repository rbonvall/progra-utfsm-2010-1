Ejercicios de la clase del 7 de abril
=====================================

En la clase resolvimos la tarea dada la clase anterior
y resolvimos un problema relacionado con los números de Fibonacci.

Números de Fibonacci
--------------------
El problema computacional es el siguiente:

**Entrada**:
    un número entero ``n``.

**Salida**:
    el ``n``-ésimo número de Fibonacci.

Entendiendo el problema
~~~~~~~~~~~~~~~~~~~~~~~

Los `números de Fibonacci`_ :math:`F(k)`
son una sucesión de números naturales
definidos de la siguiente manera:

.. math::

    F(0) &= 0, \\
    F(1) &= 1, \\
    F(k) &= F(k - 1) + F(k - 2), \qquad\text{cuando } k\ge 2.

.. _números de Fibonacci: http://es.wikipedia.org/wiki/N%C3%BAmeros_de_Fibonacci

En palabras simples,
la sucesión de Fibonacci comienza con 0 y 1,
y los siguientes términos
siempre son la suma de los dos anteriores.

En la siguiente tabla,
podemos ver los números de Fibonacci
desde el 0-ésimo hasta el duodécimo.

============ == == == == == == == == == == == == === ===
:math:`n`     0  1  2  3  4  5  6  7  8  9 10 11  12 ...
:math:`F(n)`  0  1  1  2  3  5  8 13 21 34 55 89 144 ...
============ == == == == == == == == == == == == === ===

Nuestro algoritmo recibirá como entrada
un número :math:`n` que está en la primera fila de la tabla,
y deberá entregar como salida
el número :math:`F(n)` que está en su misma columna.

Proponiendo una estrategia
~~~~~~~~~~~~~~~~~~~~~~~~~~

Una observación útil para simplificar nuestro problema
es que no necesitamos llenar una tabla como la de arriba,
pues a medida que vamos avanzando hacia la derecha,
siempre necesitamos conocer solamente los dos últimos valores anteriores.
Por ejemplo, cuando necesitamos calcular :math:`F(9)`,
nos basta conocer :math:`F(8) = 21` y :math:`F(7) = 13`.
Los valores de :math:`F(6)` y anteriores
ya no interesan.

El algoritmo, por lo tanto,
recordará en cada paso el número de Fibonacci actual
y el anterior.
Para ello ocuparemos dos variables,
llamadas ``actual`` y ``anterior``.

En cada paso, las variables serán actualizadas
de la siguiente manera:

* ``anterior`` tomará el valor que tenía ``actual``;
* ``actual`` pasará a ser la suma de los valores
  que tenían ``anterior`` y ``actual``.

Para saber cuándo hemos llegado al número deseado,
hay que llevar la cuenta de en qué paso vamos.
Para ello,
utilizaremos una variable adicional
que denominaremos ``cuenta``.

La siguiente tabla
muestra cómo cambiarán las variables
a medida que el algoritmo avanza.

============ == == == == == == == == ===
``cuenta``    0  1  2  3  4  5  6  7 ...
``anterior``  0  1  1  2  3  5  8 13 ...
``actual``    1  1  2  3  5  8 13 21 ...
============ == == == == == == == == ===

Diseñando el algoritmo
~~~~~~~~~~~~~~~~~~~~~~

Lo primero de lo que nos ocuparemos
es de cómo actualizar ``anterior`` y ``actual``
como lo propusimos más arriba.

La manera ingenua (e incorrecta)
de usar las asignaciones
es la siguiente::

    anterior := actual;
    actual := anterior + actual;

El problema aquí es que ambas variables
dependen una de la otra.
Cuando cambiamos el valor de una,
el valor previo (que es el que nos interesa)
se pierde para siempre.

La solución es introducir una variable adicional,
para guardar uno de los valores
mientras actualizamos las variables.
Lo que haremos será guardar el resultado de la suma
en una variable nueva.

Las asignaciones correctas son::

    suma := anterior + actual;
    anterior := actual;
    actual := suma;

La cuenta será controlada usando un ciclo ``for``,
pues el número de iteraciones es conocido de antemano.
La cuenta debe ir desde ``1`` hasta ``n - 1``.

El único caso que no hemos cubierto
es :math:`n = 0`.
Este caso es especial porque en él
no existe un número anterior.
La manera más sencilla de cubrirlo
es comenzar el algoritmo
preguntando si estamos en este caso especial.
Si es así,
ya sabemos que la respuesta es 0.
En caso contrario,
usamos el algoritmo tal como lo habíamos diseñado.

El programa terminado
~~~~~~~~~~~~~~~~~~~~~~
.. literalinclude:: programas/fibonacci.pas
   :linenos:

Tarea
-----

1. Modificar el algoritmo de arriba
   para resolver el siguiente problema computacional:

   **Entrada**:
     un número entero :math:`n`.

   **Salida**:
     los :math:`n` primeros números de Fibonacci.

  Por ejemplo, para :math:`n = 7`,
  el algoritmo debe entregar
  ``0 1 1 2 3 5 8``.

2. Modificar el algoritmo de arriba
   para resolver el siguiente problema computacional:

   **Entrada**:
     un número entero :math:`m`.

   **Salida**:
     ``sí`` o ``no``,
     dependiendo de si :math:`m` es o no un número de Fibonacci.

  Por ejemplo, para :math:`m = 17`, el algoritmo debe decir ``no``.
  Para :math:`m = 21`, el algoritmo debe decir ``sí``.


Comentarios
-----------
.. include:: disqus.rst

