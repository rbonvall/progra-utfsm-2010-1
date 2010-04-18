Estructura de un programa Pascal
================================

Los programas en Pascal tienen la siguiente estructura::

    program {nombre del programa};
    const
        {declaración de constantes}
    var
        {declaración de variables}
    begin
        {código del programa}
    end.

El nombre del programa puede ser cualquiera,
pero siempre es conveniente pensar un nombre
que represente lo que el programa hace.

El código del programa es una secuencia de
sentencias (simples y de control)
separadas por punto y coma.

Declaración de variables
------------------------
.. index:: declaración de variables

En la sección de **declaración de variables**,
todas las variables que son utilizadas por el programa
deben ser especificadas junto con su tipo.

La sintaxis de una declaración es::

    {variable}: {tipo};

Por ejemplo,
el siguiente programa declara tres variables,
de las cuales dos son reales y una entera::

    program Ejemplo;
    var
        x: Real;
        y: Real;
        n: Integer;
    begin
        Read(x);
        Read(y);
        Read(n);
        WriteLn(n * (x * x + y * y));
    end.

Cuando varias variables tienen el mismo tipo,
pueden ser especificadas en la misma declaración
separadas por comas.
Por ejemplo,
las declaraciones de ``x`` e ``y`` en el programa de arriba
pueden ser juntadas así::

    x, y: Real;

Declaración de constantes
-------------------------
.. index:: declaración de constantes, constante

Además de las variables,
que pueden cambiar de valor durante la ejecución,
es posible ponerle nombres inmutables
a valores que serán utilizados por el programa.
Estos nombres se llaman **constantes**
y se declaran en una sección especial
precedida por ``const``.

La declaración de una constante
tiene la siguiente sintaxis::

    {nombre} = {valor}

No se utiliza ``:=`` pues esto no es una asignación,
sino una declaración de que el nombre es igual al valor.

Por ejemplo,
el siguiente programa calcula el area y el perimetro
de un circulo cuyo radio fue ingresado por el usuario:

.. literalinclude:: programas/circulo.pas
   :linenos:

En este caso,
se ha declarado la constante ``pi``
con el valor π.

Si el programa no usa constantes,
la sección ``const`` puede ser omitida.


Comentarios
-----------
.. index:: comentario

Un **comentario** es una sección del código
que es ignorada por el compilador.
Un comentario puede ser utilizado
por el programador para dejar un mensaje
en el código que puede ser útil
para alguien que tenga que leerlo en el futuro.

En Pascal, los comentarios se hacen
usando llaves::

    a := 1; { esto es un comentario }

    { esto también, y es ignorado por el compilador }
    b := 15;


.. include:: disqus.rst

