Ejercicios de la clase del 30 de junio
======================================

Ejercicio 1
-----------
Se tiene un archivo de texto llamado ``n1.txt``
con cuatro números enteros en cada línea:

.. code-block:: none

    12 5 3 3
    2 6 9 1
    -2 5 2 5
    ...

Escribir un programa que imprima la suma de los números de cada línea:

.. code-block:: none

    23
    18
    10
    ...

Ya que todas las líneas tienen la misma cantidad de números,
lo más simple es leerlos todos de una vez usando ``ReadLn``::

    program SumaLineas;
    var
        archivo: Text;
        n1, n2, n3, n4: Integer;
    begin
        Assign(archivo, 'n1.txt');
        Reset(archivo);
        while not EOF(archivo) do
        begin
            ReadLn(n1, n2, n3, n4);
            WriteLn(n1 + n2 + n3 + n4);
        end;
        Close(archivo);
    end.

Ejercicio 2
-----------
Se tiene otro archivo de texto llamado ``n2.txt``
que tiene una cantidad variable de números en cada línea:

.. code-block:: none

    12
    3 4
    1 4 7
    -8
    ...

Escribir un programa que imprima la suma de los números de cada línea:

.. code-block:: none

    12
    7
    12
    -8
    ...

Como no se sabe de antemano
cuántos números hay en cada línea,
hay que leerlos uno por uno
hasta llegar al final de la línea::

    program SumaLineas2;
    var
        archivo: Text;
        n, suma: Integer;
    begin
        Assign(archivo, 'n2.txt');
        Reset(archivo);
        while not EOF(archivo) do
        begin
            suma := 0;
            while not EOLn(archivo) do
            begin
                Read(archivo, n);
                suma := suma + n;
            end;
        end;
        Close(archivo);
    end.

.. include:: disqus.rst

