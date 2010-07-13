Ejercicio de la clase del 7 de julio
====================================

Una institución de beneficiencia
tiene un registro de las personas que han hecho donaciones
en un archivo de registros llamado ``donantes.dat``.
El registro ``Donante`` está definido de la siguiente manera::

    type
        Donante = record
            rut: Integer;
            nombre: String[32];
            monto: Integer;
        end;

El archivo está ordenado por rut
de menor a mayor.
Para simplificar,
vamos a suponer que los ruts tienen cinco dígitos,
y no incluyen el dígito después de la raya.

Por ejemplo,
el contenido del archivo
puede ser el siguiente:

    ====== ==================== =====
    Rut    Nombre               Monto
    ====== ==================== =====
    15274  Perico Los Palotes    1230
    16512  Fulanita de Tal      20200
    16801  John Doe              1400
    17001  Mengano Moya         10000
    17188  Jean Dupont            200
    ====== ==================== =====

Escribir los siguientes subprogramas:

* ``procedure IngresarDonante(var d: Donante)``,
  que permita al usuario ingresar los datos de un donante
  por teclado;
* ``function ExisteDonante(rut: Integer): Boolean``,
  que indique si el donante con el rut entregado
  existe en el archivo;
* ``procedure AgregarDonante(nd: Donante)``,
  que agregue los datos del nuevo donante ``nd`` al archivo,
  en la posición correcta que le corresponde según su rut;
* ``procedure EliminarDonante(rut: Integer)``,
  que elimine del archivo
  el donante con el rut entregado.

El procedimiento ``AgregarDonante`` es el más complicado,
ya que hay que mover los datos a un archivo temporal,
teniendo el cuidado para colocar el nuevo registro
en su posición correcta::

    procedure AgregarDonante(nd: Donante);
    var
        a, t: File of Donante;
        d: Donante;
    begin
        Assign(a, 'donantes.dat');
        Assign(t, 'tmp.dat');
        Reset(a);
        ReWrite(t);

        while not EOF(a) do
        begin
            Read(a, d);
            if d.rut < nd.rut then
                break;
            Write(t, d);
        end;

        Write(t, nd);

        if not EOF(a) then
            Write(t, d);

        while not EOF(a) do
        begin
            Read(a, d);
            Write(t, d);
        end;

        Close(a);
        Close(t);
        Erase(a);
        Rename(t, 'donantes.dat');
    end;

El proceso tiene cuatro partes:

1. se copian al archivo temporal todos los registros
   que van antes del nuevo;

2. se escribe el nuevo registro;

3. si el ciclo ``while`` anterior terminó debido al ``break`` (y no al ``EOF``),
   hay un registro leído en la variable ``d`` que está pendiente
   esperando ser escrito en el archivo temporal,
   por lo que hay que hacerlo antes de continuar;

4. hay que seguir leyendo el resto de los datos del archivo original ``a``
   y escribirlos en el archivo temporal ``t``.

(Ya voy a subir el resto de los programas)

.. include:: disqus.rst

