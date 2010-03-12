Pseudocódigo
============

El **pseudocódigo** es una representación
en que los pasos del algoritmo son descritos de manera estructurada
usando ciertas convenciones.
Es una mezcla de lenguaje natural con lenguaje de programación.

Nuestro ejemplo quedaría representado así::

    algoritmo EcuaciónSegundoGrado;
    inicio
        Leer(a);
        Leer(b);
        Leer(c);

        Δ := b² − 4ac;

        si Δ < 0 entonces
            Escribir('No hay soluciones reales');

        si Δ = 0 entonces
        inicio
            x₁ := −b / (2a);
            Escribir('La única solucion es ', x₁);
        fin

        si Δ > 0 entonces
        inicio
            x₁ := (−b + Raíz(Δ)) / (2a);
            x₂ := (−b − Raíz(Δ)) / (2a);
            Escribir('La primera solucion es ', x₁);
            Escribir('La segunda solucion es ', x₂);
        fin
    fin.

En el pseudocódigo de ejemplo podemos notar algunas de las convenciones.

* Cada instrucción es escrita en una línea,
  y terminada con un punto y coma.

* El algoritmo se lee de arriba a abajo,
  en el orden en que están escritas las instrucciones.

* Los condicionales se escriben con el formato
  ``si condición entonces instrucciones``.

* Si dentro de un condicional se ejecuta más de una instrucción,
  se marca explícitamente el inicio y el fin de las instrucciones.

* Las instrucciones dentro de un condicional
  son antecedidas con espacio en blanco.
  Esto se llama **indentación**,
  y es crucial para hacer el pseudocódigo más fácil de entender.

* Los mensajes son escritos entre comillas simples: ``'mensaje'``.

La ventaja del pseudocódigo es que es lo más parecido
al código que uno realmente escribe para desarrollar un programa
en el computador, y que aprenderemos más adelante.

Comentarios
-----------
.. include:: disqus.rst


