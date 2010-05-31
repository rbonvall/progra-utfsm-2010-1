Paso de parámetros
==================

En las funciones y los procedimientos,
existen dos mecanismos diferentes
para pasar cada uno de los parámetros
al ser llamados:
el paso por valor
y el paso por referencia.

Paso por valor
--------------
.. index:: paso por valor

Un parámetro es **pasado por valor**
cuando recibe una copia de un valor
durante la llamada al subprograma.

Los parámetros pasados por valor
son declarados de la siguiente manera::

    {variable}: {tipo}

En el siguiente ejemplo,
el parámetro ``x`` es pasado por valor::

    procedure P(x: Integer);
    begin
        WriteLn(x);
        x := 10;
        WriteLn(x);
    end.

    {...}

    y := 1;
    P(y)
    WriteLn(y);

En la llamada al procedimiento ``P``,
el valor 1 es pasado como argumento,
y queda copiado en la variable local ``x``.
Después, el valor de ``x`` es modificado,
pero esto no tiene ninguna consecuencia
en el valor de la variable original ``y``.

Al terminar la ejecución del procedimiento ``P``,
``y`` sigue teniendo el mismo valor que tenía antes,
por lo que la salida del programa será::

    1
    10
    1

Como lo que recibe el subprograma es un valor,
al momento de la llamada
es posible poner una expresión como argumento.
La expresión es evaluada,
y una copia de su resultado
es entregada al subprograma.
Por ejemplo,
todas estas llamadas al procedimiento ``P``
son válidas::

    P(y)
    P(5)
    P(4 + 5 * 6)

Paso por referencia
-------------------
.. index:: paso por referencia

Un parámetro es **pasado por referencia**

Los parámetros pasados por referencia
son declarados de la siguiente manera::

    var {variable}: {tipo}

En el siguiente ejemplo,
el parámetro ``x`` es pasado por referencia::


    procedure Q(var x: Integer);
    begin
        WriteLn(x);
        x := 10;
        WriteLn(x);
    end.

    {...}

    y := 1;
    Q(y)
    WriteLn(y);

En la llamada al procedimiento ``Q``,
la variable ``y`` (no su valor) es pasada como argumento,
y ella queda ligada a la variable local ``x``.
Todas las modificaciones que se haga a ``x`` dentro del subprograma
se verán reflejadas en el valor de la variable ligada.

Al terminar la ejecución del procedimiento ``Q``,
``y`` tendrá el valor que le fue asignado durante la llamada,
por lo que la salida del programa será::

    1
    10
    10

Como lo que recibe el subprograma es una referencia a una variable,
no es posible pasar como argumento un valor literal o una expresión.
Por ejemplo, la siguiente llamada a ``Q`` es inválida::

    Q(y + 1);  {Q espera una variable, no un valor}

Uso de pasos por valor y por referencia
---------------------------------------
Generalmente es preferible usar paso por valor
en los subprogramas que uno escriba.
La ejecución de un programa es mucho más fácil de entender
si las funciones no tienen influencia
más allá de sus variables locales y su valor de retorno.

Hay dos casos principales en los que conviene usar paso por referencia.

1. Cuando se necesita pasar un elemento muy grande
   (como un arreglo o un string),
   para evitar el costo de copiarlo;
   Por ejemplo::

     type
         ArregloDeEnteros = Array[1..10000] of Integer;

     function Menor(var a: ArregloDeEnteros): Integer;
     begin
         {...}
     end;

  En la función ``Menor``,
  si el parámetro ``a`` fuera pasado por valor,
  cada vez que ella sea llamada
  se necesitaría copiar 10000 valores.
  Como el paso es por referencia,
  esta copia no es necesaria,
  ya que la función simplemente utiliza
  los valores directamente desde su ubicación original.

2. Cuando se necesite un subprograma que entregue más de un valor como resultado,
   ya que una función no puede retornar más de un valor.

   Por ejemplo,
   en aplicaciones en que se trabaja con vectores (flechas con coordenadas :math:`x`, :math:`y` y :math:`z`)
   una operación común es la de `normalizar un vector`_
   para obtener otro que tenga largo uno.
   Como una función no puede entregar las nuevas tres coordenadas como valor de retorno,
   la alternativa es recibir las coordenadas por referencia
   y modificarlas directamente::

     procedure Normalizar(var x, y, z: Real);
     var
         norma: Real;
     begin
         norma = x * x + y * y + z * z;
         x := x / norma;
         y := y / norma;
         z := z / norma;
     end;

.. _normalizar un vector: http://es.wikipedia.org/wiki/Vector_unitario

.. include:: disqus.rst

