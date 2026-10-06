% Dado un número entero, almacenar cada dígito en una lista, un dígito por casilla:

%Caso base (no queda ningún dígito del entero que recibió lo que devuelve es una ):
almacenar(0, []):- !.

%caso recursivo:
almacenar(Entero,[Digito | RestoLista]):-
    is(Digito,mod(Entero,10)),
    is(NuevoEntero,//(Entero,10)),
    almacenar(NuevoEntero, RestoLista).