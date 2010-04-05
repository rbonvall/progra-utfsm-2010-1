Ejercicios de la clase del 5 de abril
=====================================

Estos son los ejercicios que hicimos en la clase.
Aquí están probados y sin errores.

Los pasos para resolver problemas en programación son:

1. análisis: entender el problema;
2. diseño: proponer una estrategia para resolver el problema;
3. implementación: escribir y probar el programa.

Valor absoluto
--------------
El problema computacional es el siguiente:

**Entrada**:
    un número entero ``n``.

**Salida**:
    el valor absoluto de ``n``.

La mejor estrategia para resolverlo es
usar la definición matemática de valor absoluto:
si ``n`` es negativo, su valor absoluto es ``-n``,
y si es positivo, su valor absoluto es ``n``.

Una manera de escribir el programa es la siguiente:

.. literalinclude:: programas/abs.pas

Notar que la última sentencia dentro del ``if``
no lleva punto y coma.
En clases cometí ese error.

En la práctica, un programa como éste no es necesario,
ya que Pascal provee una función ``Abs()``
que entrega el valor absoluto::

    Read(n);
    WriteLn('El valor absoluto es ', Abs(n));

Cálculo de impuesto
-------------------

Encontrar el máximo
-------------------

Comentarios
-----------
.. include:: disqus.rst

