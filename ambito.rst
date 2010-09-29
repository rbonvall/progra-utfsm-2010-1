Ámbito de variables
===================
.. index:: ámbito

El **ámbito** de una variable
(en inglés: *scope*)
es el contexto del programa
en que ella puede ser utilizada.

Ámbitos global y local
----------------------
.. index:: ámbito global, ámbito local

Pascal tiene dos ámbitos:
el **global** y el **local**.

Tienen ámbito local
las variables locales de los subprogramas
(funciones y procedimientos).
Éstas variables pueden ser utilizadas
sólo dentro del subprograma
en que fueron declaradas.

Las variables locales son:

* las declaradas en la sección ``var`` del subprograma;
* los parámetros del subprograma; y
* en el caso de las funciones,
  el nombre de la función,
  al que se le asigna el resultado.

Por ejemplo,
consideremos las dos siguientes declaraciones
de subprogramas::

    function F(a: Integer; var b: Integer): Integer;
    var
        c: Integer;
    begin
        {...}
    end;

    procedure P(x: Integer; var y: Integer);
    var
        z: Integer;
    begin
        {...}
    end;

Las variables locales de la función ``F`` son:
``a``, ``b``, ``c`` y ``F``.
Las variables locales del procedimiento ``P`` son:
``x``, ``y`` y ``z``.

Por otra parte,
las variables de ámbito global son
las que son declaradas
en la sección ``var`` del programa.

Las variables globales
pueden ser usadas desde cualquier parte del programa,
tanto el cuerpo del programa
como dentro de las funciones.


Reglas de ámbito
----------------
.. index:: reglas de ámbito

Todos los lenguajes de programación
tienen sus propias **reglas de ámbito**
que indican qué variables tienen preferencia
en caso que haya variables con el mismo nombre
en distintos ámbitos.

En Pascal,
cuando hay una variable global y una local
que tienen el mismo nombre,
dentro del subprograma
la variable global no es visible.
Esto no significa que la variable global no exista;
simplemente no es visible:
todas las ocurrencias del nombre dentro del subprograma
se refieren a la variable local.

Como ejemplo,
consideremos el siguiente programa:

.. literalinclude:: programas/ambito.pas
   :linenos:

Este programa tiene tres variables globales:
``w``, ``x`` e ``y``.
El procedimiento ``P`` tiene cuatro variables locales:
``v``, ``w``, ``y`` y ``z``.

Las asignaciones funcionan así:

* En las líneas 23 a 25,
  se modifica sólo variables globales.
  Las variables locales de ``P`` no existen fuera de la función.
* En la línea 9,
  se modifica la variable local ``v``.
* En la línea 10,
  se modifica la variable local ``w``,
  ya que la variable global ``w`` queda oculta.
* En la línea 11,
  se modifica la variable global ``x``,
  ya que no hay ninguna variable local con el mismo nombre.
* En la línea 12,
  se modifica la variable local ``z``.

Al terminar la llamada al procedimiento,
las variables locales dejan de existir.

La salida del programa es::

    Dentro de P:
      v = 5
      w = 6
      x = 7
      y = 3
      z = 8
    Fuera de P:
      w = 0
      x = 7
      y = 2

.. include:: disqus.rst

