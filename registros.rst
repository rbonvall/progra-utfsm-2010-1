Registros
=========
.. index:: registro, campo

Un **registro** (*record* en inglés) es un tipo de datos
compuesto de varias variables.
Los registros son utilizados para agrupar valores
que por su naturaleza deben manejarse juntos.
Las variables que forman parte de un registro
se llaman **campos**.

Por ejemplo,
una fecha está compuesta de un día, un mes y un año.
Por lo tanto,
puede ser representada usando un registro
con tres campos enteros.
De este modo,
es posible crear variables de tipo ``Fecha``.

Los tipos de registros son creados en la sección ``type`` del programa
de la siguiente manera::

    type
        Fecha = record
            dia: Integer;
            mes: Integer;
            ano: Integer;
        end;

Una vez creado el tipo,
es posible crear variables de tipo ``Fecha``::

    var
        nacimiento: Fecha;
        hoy: Fecha;

Cada uno de los campos de un registro
puede ser usado usando la sintaxis ``{registro}.{campo}``::

    nacimiento.dia := 24;
    nacimiento.mes := 11;
    nacimiento.ano := 1986;

Al asignar un registro entero a otro del mismo tipo,
todos los valores son copiados automáticamente, uno por uno::

    hoy := nacimiento;   {dia, mes y ano son copiados}

Un registro puede estar compuesto de tipos más complicados,
como arreglos u otros registros::

    type
        Alumno = record
            nombre: String;
            apellido: String;
            nacimiento: Fecha;
            notas: Array[1..3] of Integer
        end;

Si ``a`` es una variable de tipo ``Alumno``,
uno podría llenar todos sus campos de la siguiente manera::

    a.nombre := 'Perico';
    a.apellido := 'Los Palotes';
    a.nacimiento.dia := 17;
    a.nacimiento.mes := 11;
    a.nacimiento.ano := 1990;
    a.notas[1] := 50;
    a.notas[2] := 31;
    a.notas[3] := 78;

Sentencia with
--------------
.. index:: with

La sentencia **with** (en inglés: *con*)
puede ser usada para acceder a los campos de un registro
sin tener que repetir el nombre de la variable en cada instrucción::

    with a do
    begin
        nombre := 'Perico';
        apellido := 'Los Palotes';
        with nacimiento do
        begin
            dia := 17;
            mes := 11;
            ano := 1990;
        end;
        notas[1] := 50;
        notas[2] := 31;
        notas[3] := 78;
    end;

Arreglos de registros
---------------------
Los arreglos de registros son útiles
para representar tablas de datos.
Los campos representan las columnas de la tabla
y cada entrada del arreglo representa una fila.

Declaremos un arreglo de alumnos
usando el registro definido más arriba::

    const
        N = 36;
    var
        alumnos: Array[1..N] of Alumno;

Si el arreglo ha sido llenado,
podemos obtener todos los datos sobre alumnos específicos:

* la nota del segundo certamen del decimoséptimo alumno::

      alumnos[17].notas[2]

* el día de nacimiento del octavo alumno::

      alumnos[8].nacimiento.dia

* mostrar por pantalla el nombre completo del vigésimo cuarto alumno::

      with alumnos[24] do
          WriteLn(nombre + ' ' + apellido);

.. include:: disqus.rst

