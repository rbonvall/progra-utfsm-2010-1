Funciones y procedimientos
==========================

Consideremos el siguiente problema.
Dados dos números reales :math:`a` y :math:`b`,
evaluar el valor de la siguiente expresión:

.. math::

   f\Bigl(f\bigl(f(a)\bigr) +
          f\bigl(f(b)\bigr)\Bigl),

donde :math:`f` es el polinomio :math:`f(x) = x^5 + 1`.

Es fácil hacer un programa que evalúe
el polinomio :math:`f` usando un ``for``::

    y := 1;
    for i := 1 to 5 do
        y := y * x;
    y := y + 1;

Otra forma más sencilla es::

    y := x * x * x * x * x + 1;

Sin embargo,
evaluar una expresión como la de arriba
es mucho más engorroso,
pues hay que repetir la evaluación del polinomio
e ir guardando los resultados intermedios.

Por otra parte,
si reemplazamos la función :math:`f`
por la función raíz cuadrada,
podemos evaluar la expresión fácilmente en Pascal,
pues existe la función ``Sqrt``::

    expr := Sqrt(Sqrt(Sqrt(a)) + Sqrt(Sqrt(b)));

Nos gustaría poder hacer lo mismo
pero ocupando el polinomio :math:`f`,
y en general, con cualquier función que deseemos.

Definición de funciones
-----------------------
.. index:: función

En programación,
una **función** es una sección de un programa
que calcula un valor
de manera independiente al resto del programa.

En escencia,
una función es un mini programa:
tiene una entrada, un proceso y una salida.

.. index:: parámetro, resultado (de una función), valor de retorno

Una función tiene tres componentes importantes:

* los **parámetros**,
  que son los valores que recibe la función como entrada;
* el **código de la función**,
  que son las operaciones que realiza la función; y
* el **resultado** o **valor de retorno**,
  que es el valor final que entrega la función.

En un programa Pascal,
las funciones deben ser definidas antes del ``begin``
que indica el comienzo del programa.

.. index:: función (sintaxis), function

La sintaxis para definir una función es la siguiente::

    function {nombre}({parámetro}: {tipo}; ...): {tipo del resultado};
    begin
        {código de la función}
    end;

Por ejemplo,
el polinomio :math:`f` que declaramos más arriba
podemos escribirlo como una función de la siguiente manera::

    function F(x: Real): Real;
    begin
        F := x * x * x * x * x + 1;
    end;

Esta función tiene el nombre ``F``,
un parámetro ``x`` de tipo real,
y un resultado de tipo real.

El resultado es indicado dentro de la función
asignando su valor al nombre de la función.

.. index:: llamada a función

Una vez que se ha definido la función,
puede ser utilizada todas las veces que se desee
en un programa.
Se le denomina **llamar la función**
a ocupar la función para obtener un valor.
Por ejemplo,
las siguientes son todas llamadas válidas
de la función ``F``, junto con sus resultados::

    F(0);          {→ 1.0}
    F(-1.1 * 0.5); {→ 0.9496715625}
    F(F(1.0));     {→ 33.0}
    a := -1.0;
    F(a * F(a))    {→ 1.0}

El programa completo que calcula la expresión
que definimos al principio
para dos valores ``a`` y ``b`` ingresados por el usuario
es el siguiente:

.. literalinclude:: programas/funcion-1.pas
   :linenos:

Variables locales
-----------------
Supongamos que ahora queremos reemplazar la misma expresión original,
pero reemplazando :math:`f` por el polinomio :math:`g(x) = x^{99} + 1`.

Para calcular :math:`x^5`, lo hacíamos con cinco multiplicaciones,
pero para :math:`x^{99}` conviene más usar un ciclo ``for``.
Para ello, necesitamos una variable de control,
que denominaremos ``i``, y una variable para ir guardando
los resultados parciales de las multiplicaciones,
que denominaremos ``producto``::

    producto := 1;
    for i := 1 to 99 do
        producto := producto * x;
    G := producto + 1;

Las variables ``producto`` e ``i``
sólo son usadas por la función ``G``,
y no por el resto del programa.
Por lo mismo,
pueden ser declaradas dentro de la función,
y de este modo serán invisibles desde fuera de ella.

.. index:: variable local

Las variables que son declaradas en una función
se llaman **variables locales**.
Ellas existen sólo mientras la función es llamada.
Una vez que la función entrega su resultado,
las variables locales dejan de existir,
y no pueden ser utilizadas desde el resto del programa.
Los parámetros de la función también son variables locales.

.. index:: variable global

Las variables que son declaradas en la sección ``var`` del programa
se llaman **variables globales**,
y pueden ser utilizadas en cualquier parte del programa,
incluso dentro de una función.

El programa modificado para usar la función :math:`g`
en lugar de la función :math:`f` es el siguiente:

.. literalinclude:: programas/funcion-2.pas
   :linenos:

En este programa,
las variables ``a`` y ``b`` son globales,
mientras que las variables ``x``, ``producto`` e ``i``
son locales de la función ``G``.

Funciones que usan funciones
----------------------------
Ahora supongamos que queremos reemplazar la función :math:`g`
por el polinomio
:math:`h(x) = x^{99} - 5x^{79} + 10x^{59} - 5x^{29} + 1`.

Si definimos una función ``H``,
esto requerirá calcular cuatro productos
como los que calculamos en la función ``G``.
Para evitar tener que escribir código repetido,
podemos escribir una nueva función ``Potencia(x, n)``
que calcule :math:`x^n`. ::

    function Potencia(x: Real; n: Integer): Real;
    var
        i: Integer;
    begin
        Potencia := 1;
        for i := 1 to n do
            Potencia := Potencia * x;
    end;

En este caso, 
hemos usado el nombre de la función
como una variable intermedia
para ir guardando el resultado parcial.

El programa completo sería el siguiente:

.. literalinclude:: programas/funcion-3.pas
   :linenos:

Como vemos,
la definición de la función ``H``
resulta muy simple
ya que la tarea de calcular las potencias
ha sido encapsulada en otra función.
En general,
siempre que haya operaciones que deben hacerse varias veces,
conviene definir una función para realizarla.

Procedimientos
--------------
.. index:: procedimiento

Un **procedimiento** es una sección de un programa
(al igual que una función)
que realiza varias sentencias
de manera independiente al resto del programa.
La diferencia con una función
es que un procedimiento no entrega ningún valor como resultado.

Los procedimientos son útiles
para agrupar secuencias de sentencias
que deben ser realizadas juntas.
Usar procedimientos suele hacer
que los programas sean más fáciles de leer.

La sintaxis para crear un procedimiento es la siguiente::

    procedure {nombre}({parámetro}: {tipo}; ...);
    var
        {variables locales}
    begin
        {código del procedimento}
    end;

Por ejemplo,
desarrollemos un programa que:

* pida al usuario que ingrese diez valores;
* calcule la expresión que definimos al principio de la página
  a todos los pares consecutivos de valores,
  usando la función :math:`k(x) = x^2 - x + 1`;
* mostrar los resultados por pantalla.

El ingreso de los datos puede ser realizado
por un procedimiento ``LeerValores(n)``,
que le pida al usuario que ingrese ``n`` valores::

    procedure LeerValores(m: Integer);
    var
        i: Integer;
    begin
        for i := 1 to m do
        begin
            Write('Ingrese valor ', i, ': ');
            Read(valores[i]);
        end;
    end;

De la misma manera,
uno puede crear procedimientos
que se encarguen de calcular los resultados
y luego de imprimirlos.

El programa quedaría así:

.. literalinclude:: programas/funcion-4.pas
   :linenos:

Como puede verse,
el programa principal queda muy corto y fácil de entender::

    LeerValores(N);
    CalcularResultados(N - 1);
    ImprimirResultados(N - 1)

.. include:: disqus.rst

