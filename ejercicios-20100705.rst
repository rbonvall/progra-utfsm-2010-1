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

(Ya voy a subir la explicación de cada subprograma).

::

    procedure IngresarProducto(var p: Producto);
    begin
        Write('Ingrese el codigo del producto: ');
        ReadLn(p.codigo);
        Write('Ingrese el nombre del producto: ');
        ReadLn(p.nombre);
        Write('Ingrese la cantidad de unidades: ');
        ReadLn(p.cantidad);
    end;

::

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

::

    procedure AgregarProductoAlFinal(np: Producto);
    var
        a: File of Producto;
    begin
        Assign(a, 'inventario.dat');
        Append(a);
        Write(a, np);
        Close(a);
    end;

::

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

::

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

