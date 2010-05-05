Strings
=======
.. index:: string

Un **string** es un tipo de datos para representar texto.

En Pascal,
para todos los efectos prácticos
un string puede ser considerado un arreglo de caracteres.

La sintaxis para declarar un string es::

    var
        {nombre}: String;

Esto crea un string cuya máxima capacidad es 255 caracteres.
Para crear un string con capacidad distinta,
se utiliza la siguiente sintaxis::

    var
        {nombre}: String[{capacidad}];

Por ejemplo,
el siguiente programa pregunta el nombre del usuario
y lo saluda:

.. literalinclude:: programas/saludo.pas
   :linenos:

Los strings literales
se representan entre comillas simples::

    if nombre = 'Condorito' then
        WriteLn('¡Exijo una explicacion!');

.. index:: Length

El largo del string puede ser obtenido
usando la función ``Length()``::

    palabra := 'paralelepipedo';
    Length('');        {→ 0}
    Length('perro');   {→ 5}
    Length(palabra);   {→ 14}

Cada caracter del string puede ser referenciado
usando su índice,
tal como ocurre con los arreglos.
Por ejemplo,
el siguiente programa convierte a mayúsculas
la entrada del usuario,
y cuenta cuántas vocales tiene:

.. literalinclude:: programas/may-vocales.pas
   :linenos:

.. include:: disqus.rst

