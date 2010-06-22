Archivos
========

.. index:: memoria RAM, almacenamiento volátil

Todos los datos que un programa utiliza durante su ejecución
se encuentran en sus variables,
que están almacenadas en la `memoria RAM`_ del computador.

La memoria RAM es un medio de almacenamiento **volátil**:
cuando el programa termina, o cuando el computador se apaga,
todos los datos se pierden para siempre.

.. index:: disco duro, almacenamiento persistente

Para que un programa pueda guardar datos de manera permanente,
es necesario utilizar un medio de almacenamiento **persistente**,
de los cuales el más importante es el `disco duro`_.

.. index:: archivo

Los datos en el disco duro están organizados en archivos_.
Un **archivo** es una secuencia de datos
almacenados en un medio persistente
que están disponibles
para ser utilizados por un programa.
Todos los archivos tienen un nombre
y una ubicación dentro del sistema de archivos del sistema operativo.

Los datos en un archivo siguen estando presentes
después de que termina el programa que lo ha creado.
Un programa puede guardar sus datos en archivos
para usarlos en una ejecución futura,
e incluso puede leer datos
desde archivos creados por otros programas.

.. _memoria RAM: http://es.wikipedia.org/wiki/Memoria_RAM
.. _disco duro: http://es.wikipedia.org/wiki/Disco_duro
.. _archivos: http://es.wikipedia.org/wiki/Archivo_(informática)

Los dos tipos de archivo que veremos en el ramo son:

* los **archivos de registros**,
  que almacenan una secuencia de datos del mismo tipo; y
* los **archivos de texto**,
  que almacenan texto.

En un programa,
los archivos de registros están representados
por el tipo ``File of {tipo de datos}``,
y los archivos de texto por el tipo ``Text``.

Como convención,
los archivos de registros tendrán extensión ``.dat``
y los archivos de texto, ``.txt``.

Manipulación de archivos
------------------------
Un programa no puede manipular los datos de un archivo directamente.
Para usar un archivo, un programa siempre debe realizar
los pasos indicados a continuación.

.. index:: archivo lógico

1. Declarar una variable del tipo de archivo correspondiente,
   a través de la cual se realizarán
   todas las operaciones sobre el archivo.
   Por ejemplo,
   para manipular un archivo de registros de enteros::

       var
           archivoEnteros: File of Integer;

   A esta variable se le llama **archivo lógico**.

.. index:: Assign

2. Asociar el archivo lógico
   a un archivo concreto en el disco duro,
   usando el procedimiento ``Assign``.
   Por ejemplo,
   si el archivo se llama ``ejemplo.dat``::

       Assign(archivoLogico, 'ejemplo.dat');

   Una vez que se ha hecho la asociación,
   todas las operaciones sobre el archivo concreto
   serán realizadas a través del archivo lógico.

.. index:: Reset, ReWrite, Append, abrir archivo

3. Abrir el archivo.
   Depende del uso que se le va a dar al archivo,
   existen tres maneras de abrir el archivo:


   * para leer datos desde él::

         Reset(archivoLogico);

     Si el archivo no existe,
     ocurrirá un error
     y el programa terminará.

   * para escribir datos en él::

         ReWrite(archivoLogico);

     Si el archivo no existía,
     es creado,
     y si existía,
     es eliminado y creado de nuevo.

   * para agregar datos al final de él::

         Append(archivoLogico);

     Si el archivo no existía,
     es creado.

.. index:: Close, cerrar archivo

4. Cerrar el archivo
   una vez que se ha dejado de usarlo,
   usando el procedimiento ``Close``::

       Close(archivoLogico);

.. Los datos de un archivo están almacenados secuencialmente,
.. y en todo momento hay una posición específica del archivo
.. en la que se puede leer o escribir datos.
.. La variable de tipo archivo
..
.. Al momento de abrir un archivo desde un programa,
.. es creado un **cursor** que indica la posición actual en el archivo
.. desde la que
..
.. Inmediatamente después del último dato del archivo,
.. hay una marca que indica

Archivos de registros
---------------------
(Por escribir)

Escritura de archivos
~~~~~~~~~~~~~~~~~~~~~
.. index:: Write (archivo)

Para escribir un dato en un archivo de registros
se utiliza el procedimiento ``Write(archivoLogico, dato)``.
El dato debe ser del mismo tipo
indicado en la declaración del archivo lógico.

Por ejemplo,
el siguiente programa pide al usuario
que escriba una secuencia de ``n`` números enteros
(donde ``n`` lo determina el usuario)
y los guarda en un archivo llamado ``numeros.dat``:

.. literalinclude:: programas/archivo-escribir.pas
   :linenos:

En este ejemplo,
el archivo lógico se llama ``a``.
Note la diferencia entre los dos usos de ``Write``:

* en la línea 14, es utilizado para escribir un mensaje por pantalla,
  y recibe varios parámetros, que representan los datos por mostrar;

* en la línea 16, es utilizado para escribir en el archivo,
  y recibe exactamente dos parámetros:
  el archivo lógico y el dato a escribir.

Lectura de archivos
~~~~~~~~~~~~~~~~~~~
.. index:: Read (archivo)

Para leer un dato de un archivo de registros y guardarlo en una variable,
se utiliza el procedimiento ``Read(archivoLogico, variable)``.
La variable debe ser del mismo tipo
indicado en la declaración del archivo lógico.

Antes de realizar cualquier operación de escritura,
es necesario verificar que aún quedan datos por leer.
Para eso, se utiliza la función ``EOF(archivoLogico)``,
que retorna ``True`` si se ha llegado al final del archivo.
Intentar leer datos de un archivo que se ha terminado
es un error, y provoca que el programa se termine.

La manera más común de ir leyendo los datos de un archivo
es dentro de un ciclo ``while`` que compruebe
que aún no se llega al final del archivo::

    while not EOF(archivoLogico) do
    begin
        Read(archivoLogico, v);
        {...}
    end;

Por ejemplo,
el siguiente programa lee los datos
del archivo ``numeros.dat`` creado en la sección anterior,
y los muestra por pantalla:

.. literalinclude:: programas/archivo-leer.pas
   :linenos:

Ejemplo visto en clases
-----------------------
El archivo ``notas.dat`` tiene la lista de notas de un curso
en el siguiente formato:

* nombre (30 caracteres),
* apellido (30 caracteres),
* notas 1, 2 y 3 (enteros).

Escriba un programa que cree un archivo ``promedios.dat``
que tenga nombre, apellido y promedio
sólo de los alumnos que aprobaron.

.. literalinclude:: programas/archivo-promedios.pas
   :linenos:

Archivos de texto
-----------------
(Por escribir)

.. include:: disqus.rst

