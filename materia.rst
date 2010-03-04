Materia
=======

Algoritmos
----------

Un **algoritmo** es una secuencia de pasos para resolver un problema.

Todo algoritmo tiene un inicio y un final.
Los pasos deben estar muy bien definidos,
y tienen que describir sin ambigüedades
cómo llegar desde el inicio hasta el final.
Un algoritmo tiene tres componentes que siempre están presentes:

1. la **entrada**: son los datos que necesita un algoritmo
   para poder ser ejecutado;
2. el **proceso**: son los pasos que hay que seguir,
   utilizando la entrada;
3. la **salida**: es el resultado que entrega el algoritmo.

Todo el mundo conoce y utiliza algoritmos a diario,
incluso sin darse cuenta:

* Una receta de cocina es un algoritmo;
  si bien podríamos cuestionar que algunos pasos son ambiguos
  (¿cuánto es «una pizca de sal»? ¿qué significa «agregar a gusto»?),
  en general las instrucciones están lo suficientemente bien definidas
  para que uno las pueda seguir sin problemas.

  La entrada de una receta son los ingredientes
  y algunos datos como: ¿para cuántas personas se cocinará?
  El proceso es la serie de pasos para manipular los ingredientes.
  La salida es el plato terminado.

* El método para multiplicar números a mano
  que se aprende en el colegio es un algoritmo.
  Dado cualquier par de números enteros,
  si seguimos paso a paso el procedimiento 
  siempre obtendremos el producto.

  La entrada del algoritmo de multiplicación
  son los dos factores.
  El proceso es la secuencia de pasos
  en que los dígitos van siendo multiplicados
  las reservas van siendo sumadas,
  y los productos intermedios son finalmente sumados.
  La salida del algoritmo es el producto obtenido.

No toda secuencia de instrucciones es un algoritmo.
Un algoritmo debe poder seguirse
sin necesidad de usar inteligencia, intuición ni habilidad.
Un criterio para saber si un algoritmo está bien descrito
puede ser: ¿podría un robot seguir estas instrucciones sin equivocarse?

Un ejemplo sencillo: resolver una ecuación de segundo grado
-----------------------------------------------------------
Una ecuación de segundo grado
es una ecuación de la forma
:math:`ax^2 + bx + c = 0`,
donde :math:`a`, :math:`b` y :math:`c` son datos dados
y :math:`x` es la incógnita que se desea determinar.

Por ejemplo, :math:`2x^2 - 5x + 2 = 0` es una ecuación de segundo grado
con :math:`a = 2`, :math:`b = -5` y :math:`c = 2`.
Sus soluciones son :math:`x_1 = 1/2` y :math:`x_2 = 2`,
como se puede comprobar reemplazando estos valores en la ecuación.

En álgebra aprendemos un algoritmo para resolver estas ecuaciones.
Es lo suficientemente detallado para que pueda usarlo cualquier persona,
incluso sin saber qué es una ecuación de segundo grado.

1. **Entrada**: obtener los valores de
   :math:`a`, :math:`b` y :math:`c`.
2. Calcular el discriminante :math:`Δ = b^2 - 4ac`.
3. Si :math:`Δ < 0`, entonces la ecuación no tiene soluciones reales.
4. Si :math:`Δ = 0`, entonces la ecuación tiene una solución real,
   que es :math:`x = -b/2a`.
5. Si :math:`Δ > 0`, entonces
   la ecuación tiene dos soluciones reales,
   que son :math:`x = (-b ± \sqrt{Δ})/2a`.
6. **Salida**: entregar las soluciones :math:`x` obtenidas.

La entrada es el paso 1, la salida es el paso 6,
y el resto de los pasos son parte del proceso.


Cómo describir un algoritmo
---------------------------
El lenguaje natural (la manera en que hablamos a diario)
no es el más apropiado para describir un algoritmo:
es complejo, ambiguo e impreciso.

Un algoritmo debe ser descrito en un lenguaje simbólico universal.
Dos lenguajes que usaremos son
los diagramas de flujo y el pseudocódigo.

Diagramas de flujo
~~~~~~~~~~~~~~~~~~
Un **diagrama de flujo** es una representación gráfica de un algoritmo.
Los pasos son representados por varios tipos de cajas,
y el flujo de ejecución es representado por flechas que conectan las cajas.

El algoritmo para resolver ecuaciones de segundo grado
puede ser representado así:

.. image:: _static/images/flujo-ec-2do-grado.png
   :alt: (Diagrama de flujo)

* El inicio y el final del algoritmo son representados con círculos.
  El algoritmo siempre debe llegar desde uno hasta el otro,
  sin importar por qué camino lo hace.
  Un algoritmo no puede «quedarse pegado».

* La entrada y la salida de datos son representadas con romboides,
  que en el ejemplo están pintados de verde.
  La entrada de un dato es representada con el texto `Leer(dato)`,
  y la salida de información con el texto `Escribir(mensaje)`.

* Las partes donde un algoritmo puede tomar varios caminos
  son representadas con diamantes.
  Tiene que haber un camino saliente para cada caso posible.


Pseudocódigo
~~~~~~~~~~~~
El **pseudocódigo** es una representación
en que los pasos del algoritmo son descritos de manera estructurada
usando ciertas convenciones.
Es una mezcla de lenguaje natural con lenguaje de programación.

El pseudocódigo...::

    algoritmo EcuacionSegundoGrado;
    inicio
        Leer(a);
        Leer(b);
        Leer(c);

        Δ := b² − 4ac;

        si Δ < 0 entonces
            Escribir("No hay soluciones reales");

        si Δ = 0 entonces
        inicio
            x₁ := −b / (2a);
            Escribir("La única solucion es ", x₁);
        fin

        si Δ > 0 entonces
        inicio
            x₁ := (−b + Raíz(Δ)) / (2a);
            x₂ := (−b − Raíz(Δ)) / (2a);
            Escribir("La primera solucion es ", x₁);
            Escribir("La segunda solucion es ", x₂);
        fin
    fin.


La gracia del pseudocódigo es que es lo más parecido
al código que uno realmente escribe para desarrollar un programa
en el computador, y que aprenderemos más adelante.
