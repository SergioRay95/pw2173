/**********************************************************/
/*                                                        */
/*  Departamento de Ciencia de la Computaci�n e           */
/*               Inteligencia Artificial                  */
/*  Universidad de Alicante                               */
/*                                                        */
/*                LOGICA DE PRIMER ORDEN                  */
/*                       Prolog                           */
/*                                                        */
/*  M. Jes�s Castel                      Fara�n Llor�ns   */
/*                                                        */
/*       S.O.       :  MS-DOS (Windows)                   */
/*       Interprete :  SWI-Prolog                         */
/*       Fichero    :  EJ09.PL                            */
/*                                                        */
/**********************************************************/

/* �RBOL GENEAL�GICO                                      */

/* mensaje :- nl,write('Ejemplo "�rbol Geneal�gico" cargado.'),
           nl,nl. */



/*----             PROGRAMA PRINCIPAL                 ----*/

/*------ Hechos ------*/

/* padres(H,P,M,A) <- H tiene como padre a P y como madre
                      a M, y naci� el a�o A */
padres('Don Jose',p1,m1,1933).
padres('Do�a Maria',p2,m2,1934).
padres('Jose','Don Jose','Do�a Maria',1955).
padres('Maria','Don Jose','Do�a Maria',1968).
padres('Antonia',p3,m3,1959).
padres('Maria Jose','Don Jose','Do�a Maria',1961).
padres('Luis',p4,m4,1961).
padres('Jose Antonio','Jose','Antonia',1979).
padres('Pepe','Jose','Antonia',1983).
padres('Rosa',p5,m5,1985).
padres('Jose Luis','Luis','Maria Jose',1991).
padres('Maria Luisa','Luis','Maria Jose',1996).
padres('Pepito','Pepe','Rosa',2015).

/* casados(H,M) <- El hombre H est� casado con la mujer M */
casados('Don Jose','Do�a Maria').
casados('Jose','Antonia').
casados('Luis','Maria Jose').
casados('Pepe','Rosa').

/* hombre(P) <- la persona P es del g�nero masculino */
hombre('Don Jose').
hombre('Jose').
hombre('Luis').
hombre('Jose Antonio').
hombre('Pepe').
hombre('Jose Luis').
hombre('Pepito').

/* mujer(P) <- la persona P es del g�nero femenino */
mujer('Do�a Maria').
mujer('Antonia').
mujer('Maria').
mujer('Maria Jose').
mujer('Rosa').
mujer('Maria Luisa').


/*------ Reglas ------*/

/* edad(P,E) <- la persona P tiene E a�os */
edad(P,E) :- padres(P,_,_,N), E is 2017 - N.

/* mayor(P1,P2) <- la persona P1 es mayor que P2 */
mayor(P1,P2) :- padres(P1,_,_,N1), padres(P2,_,_,N2), N1 > N2.

/* ni�o(P1) <- P1 es un ni�o (menos de 14 a�os) */
ni�o(P1) :- edad(P1,E), E < 14.

/* joven(P1) <- P1 es una persona joven (entre 14 y 25 a�os) */
joven(P1) :- edad(P1,E), E >= 14, E < 25.

/* adulto(P1) <- P1 es un adulto (entre 25 y 50 a�os) */
adulto(P1) :- edad(P1,E), E >= 25, E < 50.

/* viejo(P1) <- P1 es una persona vieja (m�s de 50 a�os) */
viejo(P1) :- edad(P1,E), E >= 50.

/* hermanos(H1,H2) <- H1 es hermano/a de H2 */

/* tio(T,S) <- T es el tio de S, considere tios politicos */

/* tia(T,S) <- T es la tia de S, considere tios politicos */

/* primos(P1,P2) <- P1 es primo/a de P2 */

/* abuelo(A,N) <- A es el abuelo de N */

/* abuela(A,N) <- A es la abuela de N */

/* antepasado(A,P) <- A es antepasado de P */


/* :- mensaje. */





