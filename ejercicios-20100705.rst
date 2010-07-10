Ejercicio de la clase del 5 de julio
====================================

Se tiene un archivo llamado ``inventario.dat``
que contiene datos de tipo ``Producto``::

    type
        Producto = record
            codigo: Integer;
            nombre: String[16];
            cantidad: Integer;
        end;

Por ejemplo,
el contenido del archivo
puede ser el siguiente:

    ====== ================ =====
    Código Nombre           Cant.
    ====== ================ =====
       142 Cuaderno            20
       857 Reloj              120
       999 Vuvuzela             5
        41 Pizarra             12
      1000 Tractor            412
    ====== ================ =====

Escribir los siguientes subprogramas:

* ``procedure IngresarProducto(var p: Producto)``,
  que permita al usuario ingresar los datos de un producto
  por teclado;
* ``function ExisteProducto(codigo: Integer): Boolean``,
  que indique si el producto con el código entregado
  existe en el inventario;
* ``procedure AgregarProductoAlFinal(np: Producto)``,
  que agregue los datos del nuevo producto ``np``
  al final del archivo;
* ``procedure AgregarProductoAlInicio(np: Producto)``,
  que agregue los datos del nuevo producto ``np``
  al principio del archivo;
* ``procedure EliminarProducto(codigo: Integer)``,
  que elimine del archivo
  el producto con el código entregado.

El procedimiento ``IngresarProducto``
debe recibir una variable de tipo ``Producto``
pasada por referencia para poder modificarla,
y poblar sus campos con los valores ingresados por el usuario::

    procedure IngresarProducto(var p: Producto);
    begin
        Write('Ingrese el codigo del producto: ');
        ReadLn(p.codigo);
        Write('Ingrese el nombre del producto: ');
        ReadLn(p.nombre);
        Write('Ingrese la cantidad de unidades: ');
        ReadLn(p.cantidad);
    end;

La función ``ExisteProducto``
debe leer los registros uno por uno
hasta encontrar el que tenga el código buscado.
Una vez que es encontrado, se termina la búsqueda::

    function ExisteProducto(codigo: Integer): Boolean;
    var
        a: File of Producto;
        p: Producto;
        encontrado: Boolean;
    begin
        encontrado := false;

        Assign(a, 'inventario.dat');
        Reset(a);
        while not EOF(a) do
        begin
            Read(a, p);
            if p.codigo = codigo then
            begin
                encontrado := true;
                break;
            end;
        end;
        Close(a);

        ExisteProducto := encontrado;
    end;

Para el procedimiento ``AgregarProductoAlFinal``,
se puede abrir el archivo usando ``Append``.
De este modo,
el cursor quedará inicialmente posicionado
al final del archivo,
por lo que al escribir el nuevo producto
quedará automáticamente agregado al final::

    procedure AgregarProductoAlFinal(np: Producto);
    var
        a: File of Producto;
    begin
        Assign(a, 'inventario.dat');
        Append(a);
        Write(a, np);
        Close(a);
    end;

Agregar un producto al inicio del archivo
es más complicado,
puesto que no se pueden desplazar los registros existentes
hacia el final.
La solución es usar un **archivo temporal**,
en el que se escriben los registros
en el orden deseado.

Primero se escribe el nuevo registro,
y a continuación todos los registros
que existían originalmente en el inventario.
Al final,
se elimina el archivo original
(usando el procedimiento ``Erase``)
y se renombra el archivo temporal
con el nombre original (usando el procedimiento ``Rename``)::

    procedure AgregarProductoAlInicio(np: Producto);
    var
        a, t: File of Producto;
        p: Producto;
    begin
        Assign(a, 'inventario.dat');
        Assign(t, 'tmp.dat');
        Reset(a);
        ReWrite(t);

        Write(t, np);
        while not EOF(a) do
        begin
            Read(a, p);
            Write(t, p);
        end;

        Close(a);
        Close(t);
        Erase(a);
        Rename(t, 'inventario.dat');
    end;

El procedimiento ``EliminarProducto``
también debe usar un archivo temporal.
Todos los registros del archivo original
deben ser leídos uno por uno,
pero sólo son escritos en el nuevo archivo
si su código no es el del producto a eliminar::

    procedure EliminarProducto(codigo: Integer);
    var
        a, t: File of Producto;
        p: Producto;
    begin
        Assign(a, 'inventario.dat');
        Assign(t, 'tmp.dat');
        Reset(a);
        ReWrite(t);

        while not EOF(a) do
        begin
            Read(a, p);
            if p.codigo <> codigo then
                Write(t, p);
        end;

        Close(a);
        Close(t);
        Erase(a);
        Rename(t, 'inventario.dat');
    end;

Tarea para la casa
------------------
Escribir el procedimiento ``AgregarUnidades(codigo: Integer, unidades: Integer)``,
que haga lo siguiente:

* si el producto con el código dado está en el archivo,
  sumarle a su cantidad las unidades indicadas;
* si el producto no está en el archivo,
  pedirle al usuario que ingrese el nombre del producto
  y agregarlo al archivo con las unidades indicadas.

Puede utilizar cualesquiera de los subprogramas creados más arriba.

.. include:: disqus.rst

