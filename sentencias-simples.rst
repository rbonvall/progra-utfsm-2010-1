Sentencias simples en Pascal
============================

.. index:: sentencia

Una **sentencia** es
cada una de las instrucciones
que componen un programa.

Las sentencias más simples
que forman un programa
son las asignaciones,
la entrada y la salida.

En un programa,
las sentencias deben estar separadas por punto y coma.

Asignaciones
------------
.. index:: asignación

Las asignaciones en Pascal
son representadas con la sintaxis
que ya presentamos::

     variable := expresión

Un programa es un archivo de texto plano,
por lo que no se puede utilizar notación matemática
(como elevar al cuadrado con un superíndice ``²``)
ni símbolos muy exóticos (como la letra griega ``Δ``).
La asignación del ejemplo que vimos anteriormente
se escribe así::

    discriminante := b * b - 4 * a * c;

Salida
------
.. index:: salida, Write, WriteLn

En Pascal existen dos funciones
para 

La función **Write**
(en español: «escribir»)
muestra un mensaje por la pantalla.

La función **WriteLn**
(en español: «escribir línea»)
también muestra un mensaje por la pantalla,
y además inserta al final un salto de línea.

En la práctica,
la diferencia es que ``Write`` deja el cursor
inmediatamente después de escribir el mensaje.
``WriteLn`` lo deja en una línea nueva.

Ambas funciones pueden recibir varios parámetros,
que se entregan separados por comas.
Un mensaje puede ser texto literal
(encerrado entre comillas simples)
o una variable.

Por ejemplo,
el siguiente código escribe el mensaje ``Hola mundo`` en la pantalla::

    WriteLn('Hola mundo');

También podría haber sido escrito así::

    WriteLn('Hola ', 'mundo');

o así::

    Write('Hola ');
    WriteLn('mundo');

Entrada
-------
.. index:: entrada, Read, ReadLn

..
    En Pascal existen dos funciones para ingresar datos.

La función **Read**
(en español: «leer»)
lee un valor que el usuario escribe en el teclado.
El valor se termina de leer
cuando el usuario escribe un espacio en blanco.

Por ejemplo,
el siguiente código le pide al usuario
que ingrese los valores de ``a``, ``b`` y ``c``
para resolver la ecuación cuadrática::

    Write('Ingrese a, b y c: ');
    Read(a);
    Read(b);
    Read(c)

Al ejecutar el programa,
el usuario puede escribir::

    5 2 -3

o también puede escribir::

    5
    2
    -3

En ambos casos,
los valores quedarán guardados en las variables correspondientes.

..
    La función **ReadLn**
    (en español: «leer línea»)
    lee una línea completa de texto.
    Es útil para leer texto que tiene espacios entre medio.
    Por ejemplo,
    el siguiente código le permite al usuario escribir su nombre::
..
        Write('Escriba su nombre: ');
        ReadLn(nombre)
..
    Si el usuario escribe ``Perico Los Palotes`` y presiona Enter,
    el valor ``'Perico Los Palotes'`` quedará guardado en la variable ``nombre``.
    Si hubiéramos usado la función ``Read``,
    sólo hubiera quedado guardado ``'Perico'``.


Comentarios
-----------
.. include:: disqus.rst

