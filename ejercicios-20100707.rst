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

(Ya voy a subir los programas)


.. include:: disqus.rst

