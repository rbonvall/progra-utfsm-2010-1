Funciones predefinidas en Pascal
================================

Pascal provee un conjunto de funciones
que pueden ser llamadas dentro de una expresión.

Las llamadas a funciones se hacen
poniendo el nombre de la función,
y luego su argumento entre paréntesis::

    Abs(-2)
    Exp(4.5)

Más adelante aprenderemos a crear nuestras propias funciones.

Funciones matemáticas
---------------------

Las funciones matemáticas de Pascal son:

* ``Abs(x)``: valor absoluto;
* ``Exp(x)``: exponencial :math:`e^x`;
* ``Ln(x)``: logaritmo natural;
* ``Sin(x)``: seno;
* ``Cos(x)``: coseno;
* ``ArcTan(x)``: arcotangente;
* ``Sqr(x)``: cuadrado;
* ``Sqrt(x)``: raíz cuadrada.

Una función que opera sólo sobre valores enteros
es ``Odd(n)``, que entrega ``True`` si ``n`` es impar.

Funciones de conversión de real a entero
----------------------------------------
Existen dos funciones para convertir un número real a un entero:

* ``Trunc(x)``: truncamiento (elimina los decimales), y
* ``Round(x)``: redondeado (aproxima al entero más cercano).

Algunos ejemplos::

    Round(5.4)  {→  5}     Trunc(5.4)  {→  5} 
    Round(5.7)  {→  6}     Trunc(5.7)  {→  5} 
    Round(2.0)  {→  2}     Trunc(2.0)  {→  2} 
    Round(-8.4) {→ -8}     Trunc(-8.4) {→ -8} 
    Round(-8.6) {→ -9}     Trunc(-8.6) {→ -8} 

Funciones sucesor y predecesor
------------------------------
En tipos de datos para cuyos valores tenga sentido,
las funciones ``Succ`` y ``Pred`` permiten obtener
respectivamente el sucesor y el predecesor de un valor.

Por ejemplo::

    Succ(10)    {→ 11}     Pred(10)   {→ 9}          
    Succ('y')   {→ 'z'}    Pred('y')  {→ 'x'}        
    Succ(False) {→ True}   Pred(True) {→ False}      
    Succ(-5)    {→ -4}     Pred(-5)   {→ -6}         

Generalmente, ambas funciones son inversas una de la otra,
y en la mayoría de los casos se cumplen estas relaciones::

    Succ(Pred(x)) = x
    Pred(Succ(x)) = x

**Ejercicio**: ¿cuándo no se cumplen?

Funciones de mapeo de caracteres
--------------------------------
Los caracteres (valores de tipo ``Char``)
son representados internamente en el computador
como números enteros.
Para ello,
tiene que haber un mapeo que asocie cada símbolo a un número.
El ejemplo más conocido de eso
es el `código ASCII`_,
que mapea los números del 0 al 127 a caracteres.

.. _código ASCII: http://es.wikipedia.org/wiki/ASCII

Este mapeo es accesible desde Pascal
usando las siguientes funciones:

* ``Ord(c)`` entrega el número asociado al caracter ``c``;
* ``Chr(n)`` entrega el caracter asociado al número ``n``.

Ambas funciones son inversas mutuas::

    Ord(Chr(n)) = n
    Chr(Ord(c)) = c

.. include:: disqus.rst
