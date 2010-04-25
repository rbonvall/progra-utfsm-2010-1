Expresiones
===========
.. index:: literal, variable, operador, llamada a función, expresión

Una **expresión** es una combinación de valores y operaciones
que, al ser evaluados, entregan un valor.

Algunos elementos que pueden formar parte de una expresión son:
valores **literales** (como ``2``, ``'hola'``, ``true`` o ``5.7``),
**variables**, **operadores** y **llamadas a funciones**.

Por ejemplo,
la siguiente expresión ``4 * 3 - 2`` entrega el valor 10 al ser evaluada.

El valor de la expresión ``n div 7 + 5``
depende del valor que tiene la variable ``n``
en el momento de la evaluación.

Una expresión está compuesta de otras expresiones,
que son evaluadas recursivamente
hasta llegar a sus componentes más simples,
que son los literales y las variables.

Por ejemplo, en la expresión::

    b * b - 4 * a * c

las subexpresiones que son evaluadas son las siguientes::

    b * b
    b
    4 * a * c
    4 * a
    4
    a
    c

**Ejercicio:** ¿por qué no ``a * c``?

Operadores
----------
.. index:: operador, operador unario, operador binario, operando

Un **operador** es un símbolo en una expresión
que representa una operación aplicada a los valores sobre los que actúa.

Los valores sobre los que actúa un operador se llaman **operandos**.
Un **operador binario** es el que tiene dos operandos, mientras que
un **operador unario** es el que tiene sólo uno.

Por ejemplo,
en la expresión ``2.0 + x``
el operador ``+`` es un operador binario que representa la suma,
y sus operandos son ``2.0`` y ``x``.

Los operadores en Pascal se pueden clasificar en:
aritméticos, relacionales y lógicos.

Operadores lógicos
~~~~~~~~~~~~~~~~~~
.. index:: operador lógico, operador booleano

Los **operadores lógicos** son los que tienen valores lógicos
(verdadero y falso) como operandos y como resultado.
Los dos valores lógicos posibles son
``True`` (verdadero) y ``False`` (falso).

Hay tres operadores lógicos:

.. index:: and, or, not

* **and** (en español: «y») representa la conjunción lógica;
* **or** (en español: «o») representa la disyunción lógica.
* **not** (en español: «negación») representa la negación lógica.

Los operadores ``and`` y ``or`` son binarios,
mientras que ``not`` es unario.

La siguiente tabla muestra todos los resultados posibles
de las operaciones lógicas.
Las primeras dos columnas representan los valores de los operandos,
y las siguientes tres, los resultados de las operaciones.

========= ========= =========== ========== =========
``p``     ``q``     ``p and q`` ``p or q`` ``not p``
--------- --------- ----------- ---------- ---------
``True``  ``True``  ``True``    ``True``   ``False``
``True``  ``False`` ``False``   ``True``
``False`` ``True``  ``False``   ``True``   ``True``
``False`` ``False`` ``False``   ``False``
========= ========= =========== ========== =========


Operadores aritméticos
~~~~~~~~~~~~~~~~~~~~~~
.. index:: operador aritmético

Los **operadores aritméticos** son los que representan operaciones numéricas.
Tanto sus operandos como sus resultados son valores numéricos.

.. index:: + (binario), - (binario), * , / , div , mod

Algunos operadores aritméticos binarios son:

* la **suma** ``+``;
* la **resta** ``-``;
* la **multiplicación** ``*``;
* la **división real** ``/``;
* la **división entera** ``div`` (cuociente de la división);
* el **módulo** ``mod`` (resto de la división).

Los operadores ``+``, ``-`` y ``*``
pueden tener como operandos números enteros o reales.
Si tienen al menos un operando real,
el resultado es real.

La división real ``/`` siempre entrega como resultado un real.
Por ejemplo::

    4 / 2      {→ 2.0}
    5 / 2      {→ 2.5}
    5.1 / 2.2  {→ 2.31818181818}
    1 / 4.0    {→ 0.25}

La división entera ``div``
tiene operandos enteros
y resultado entero.
El resultado es el cuociente de la división,
es decir, no tiene decimales::

    4 div 2   {→ 2}
    5 div 2   {→ 2}
    22 div 7  {→ 3}

El módulo ``mod`` entrega el resto de la división::

    4 mod 2      {→ 0}
    5 mod 2      {→ 1}
    1849 mod 10  {→ 9}

Una relación entre ``div`` y ``mod`` que siempre se cumple es::

    (a div b) * b + (a mod b) = a


Operadores relacionales
~~~~~~~~~~~~~~~~~~~~~~~
.. index:: operador relacional, comparación

Los **operadores relacionales** son los que permiten comparar valores.
Sus operandos son cualquier cosa que pueda ser comparada,
y sus resultados siempre son valores booleanos.

Algunos operadores relacionales son:

* el **igual a** ``=``;
* el **distinto a** ``<>``;
* el **mayor que** ``>``;
* el **mayor o igual que** ``>=``;
* el **menor que** ``<``;
* el **menor o igual que** ``<=``;


Precedencia de operadores
-------------------------
.. index:: precedencia de operadores, paréntesis

La **precedencia de operadores**
es una regla que especifica
en qué orden deben ser evaluadas
las operaciones de una expresión.

En Pascal, la precedencia está dada por la siguiente lista,
en que los operadores han sido listados
en orden de mayor a menor precedencia:

* ``not``
* ``*``, ``/``, ``div``, ``mod``, ``and``
* ``+``, ``-``, ``or``
* ``<``, ``<=``, ``>``, ``>=``, ``<>``, ``=``

Esto significa, por ejemplo,
que las multiplicaciones se evalúan antes que las sumas,
y que las comparaciones se evalúan después de las operaciones lógicas.

Operaciones que están en un mismo nivel
son evaluadas en el orden en que aparecen en la expresión,
de izquierda a derecha::

    15 * 12 mod 7     {→ 5  pues es igual a (15 * 12) mod 7}

Para forzar un orden de evaluación distinto a la regla de precedencia,
deben usarse paréntesis::

    15 * (12 mod 7)   {→ 75}

Hay que tener en consideración las reglas de precedencia,
pues aplicarlas de manera incorrecta puede conducir a resultados incorrectos.
En algunos casos, el programa ni siquiera compilará.
Por ejemplo, la siguiente expresión es inválida::

    a < b and c < d

pues ``and`` tiene mayor prioridad que ``<``,
así que la primera subexpresión que se evaluará
será ``b and c``, que es incorrecta pues ``b`` y ``c``
deben ser números, y ``<`` opera sólo sobre valores booleanos.
La siguiente expresión es correcta::

    (a < b) and (c < d)


.. include:: disqus.rst

