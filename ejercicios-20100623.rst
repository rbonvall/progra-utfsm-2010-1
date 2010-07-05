Ejercicio de la clase del 23 de junio
=====================================

Suponga que existe un archivo llamado ``alumnos.dat``
que tiene datos del siguiente registro::

    Alumno = record
        nombre: String[30];
        apellido: String[30];
        genero: Char; {'M' o 'F'}
        notas: Array[1..3] of Integer;
    end;

Se desea enviar una carta
a cada alumno que aparece en el archivo
con el siguiente contenido:

.. code-block:: none

    Estimad[o/a] [nombre],
    usted ha [aprobado/reprobado]
    con promedio [p].

    Saludos.

Escriba un programa
que cree las cartas como archivos de texto
llamados ``carta-nombre-apellido.txt``.

.. literalinclude:: programas/cartas.pas
   :linenos:


.. include:: disqus.rst

