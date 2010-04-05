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

Notar que la última sentencia dentro del caso positivo del ``if``
no lleva punto y coma,
pues el ``else`` actúa como separador.
En clases cometí ese error.

En la práctica, un programa como éste no es necesario,
ya que Pascal provee una función ``Abs()``
que entrega el valor absoluto::

    Read(n);
    WriteLn('El valor absoluto es ', Abs(n));

Cálculo de impuesto
-------------------
El problema computacional es:

**Entrada**:
    el sueldo de una persona.

**Salida**:
    cuánto impuesto debe pagar una persona,
    si la tasa de impuesto está dada por
    la siguiente tabla:

    ====================== ================
    sueldo                 tasa de impuesto
    ---------------------- ----------------
    menos de 1000                        %0
    1000 ≤ sueldo < 2000                 %5
    2000 ≤ sueldo < 4000                %10
    4000 o más                          %12
    ====================== ================

La estrategia para diseñar el programa
es separar todos los casos
para asignar el impuesto.

Una manera de implementar la solución es usando *ifs* anidados
(es decir, uno dentro del otro):

.. literalinclude:: programas/impuesto.pas
   :linenos:

En clases yo dije que uno podía mezclar
un valores ``Real`` e ``Integer``.
Si bien esto es verdad dentro de las expresiones,
no se puede asignar un ``Real`` a una variable ``Integer``,
por lo que es necesario hacer una conversión.
En este programa he utilizado la función ``Trunc()``,
que aproxima hacia abajo.
También podría haber usado la función ``Round()``,
que aproxima al entero más cercano.
Otra posibilidad es evitar el uso de valores reales
usando sólo operaciones enteras como ``div``,
tal como algunos propusieron en clases.

En vez de usar condicionales anidados,
también se pueden poner varios en secuencia::

    if sueldo < 1000 then
        impuesto := 0;
    if (1000 <= sueldo) and (sueldo < 2000) then
        impuesto := Trunc(0.05 * sueldo);
    if (2000 <= sueldo) and (sueldo < 4000) then
        impuesto := Trunc(0.10 * sueldo);
    if sueldo >= 4000 then
        impuesto := Trunc(0.12 * sueldo);

Esta manera requiere tipear más,
y también hace que el programa haga trabajo innecesario:
por ejemplo, si el sueldo es menor que 1000,
las condiciones de los tres últimos *ifs*
serán evaluadas de todas maneras,
aunque no sea posible satisfacerlas de ningún modo.

Para evitar escribir tantas veces lo mismo,
otra manera de estructurar el código puede ser la siguente::

    if sueldo < 1000 then
        tasa := 0
    else if sueldo < 2000 then
        tasa := 0.05
    else if sueldo < 4000 then
        tasa := 0.10
    else
        tasa := 0.12;
    impuesto := Trunc(tasa * sueldo);


Encontrar el máximo
-------------------
El problema computacional es:

**Entrada**:
    una secuencia de números enteros distintos de cero;
    la entrada termina cuando el usuario ingresa un cero.

**Salida**:
    el mayor de los números ingresados.

Una estrategia que uno podría proponer es:
guardar todos los números que ingresa el usuario,
y al final buscar cuál es el mayor.
El problema es que de antemano
no se sabe cuántos números serán,
por lo que no podemos saber cuántas variables crear.

Una mejor estrategia es:
guardar sólo el máximo número hasta el momento,
y actualizarlo cuando el usuario ingrese uno que sea mayor.

Escribir el programa queda de tarea.

Además,
recomiendo resolver también la siguiente variante:
en vez de mostrar el número mayor,
mostrar en qué lugar fue ingresado el número máximo.
Por ejemplo, si el usuario ingresó
10, 4, 17, 9, y 1,
el programa debe entregar 3 como salida,
pues el número mayor fue el tercero ingresado.



Comentarios
-----------
.. include:: disqus.rst

