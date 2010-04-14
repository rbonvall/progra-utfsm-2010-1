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
y al nombre utilizado se le dice **variable**.

Una asignación se representa así::

    variable := expresión

La asignación del ejemplo sería::

    Δ := b² − 4ac

Una asignación debe interpretarse así:

1. primero la expresión a la derecha del ``:=`` es evaluada,
   utilizando los valores que tienen las variables en ese momento;
2. una vez obtenido el resultado,
   el valor de la variable a la izquierda del ``:=``
   es reemplazado por ese resultado.

Bajo esta interpretación,
es perfectamente posible una asignación como ésta::

    i := i + 1

Primero la expresión es evaluada,
y su resultado es el sucesor del valor actual de ``i``.
Por ejemplo, si ``i`` tiene el valor 15,
después de la asignación tendrá el valor 16.
Esto *no* significa que 15 = 16.

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

.. index:: ciclo, condición de término, iteración

Un **ciclo** ocurre cuando
un algoritmo ejecuta una serie de instrucciones
varias veces.

Como un algoritmo no puede quedarse pegado,
un ciclo debe tener además una condición de término,
cuyo valor indica si el ciclo debe continuar o terminar.

Cada ejecución de un ciclo se llama **iteración**.

El ejemplo no tiene ciclos.

Entrada
-------

.. index:: entrada, lectura

Cuando un algoritmo necesita recibir un dato,
lo podemos representar así::

    Leer(variable)

Durante la ejecución,
esto significa que el dato
queda guardado en la variable.

En el ejemplo, la entrada ocurre en el paso 1,
y puede ser representada así::

    Leer(a)
    Leer(b)
    Leer(c)

Salida
------

.. index:: salida, escritura

Una vez que el algoritmo ha resuelto el problema
para el que fue diseñado,
debe entregar sus resultados como un mensaje.
La salida puede ser representada así::

    Escribir(mensaje)

Si el mensaje es un texto literal,
va entre comillas simples.
Si es una variable,
va sólo el nombre de la variable.

En el ejemplo, cuando no existen soluciones,
la salida puede ser representada así::

    Escribir('No hay soluciones')

Cuando existe una única solución,
se puede incluirla en el mensaje::

    Escribir('La solución única es ', x)

-----

Las notaciones que hemos introducido
son útiles para describir un algoritmo 
de manera estructurada.

Cuando usamos esta notación de manera informal,
se denomina **pseudocódigo**.
En este caso,
es posible tomarse ciertas libertades
que hacen que el algoritmo más fácil de entender.

Cuando escribamos programas de verdad,
cada uno de estos elementos
deberá ser representados de manera rigurosa
usando código en Pascal.

.. include:: disqus.rst

