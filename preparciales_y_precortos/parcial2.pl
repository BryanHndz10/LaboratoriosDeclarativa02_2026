%Caso Base, cuando la raíz actual de mi árbol tiene el número que busco:
juego([_,Raiz,_], Numero, [Raiz | Cola]).

%Caso Base 2: Cuando se ha llegado al final de un árbol y no se halló el número:
juego([], _, Lista).

%Caso recursivo (donde el número es menor que el nodo actual, se va a la izquierda):
juego([Hizq,Raiz,_], Numero, [Cabeza | Cola]):-
    <(Numero,Raiz),
    juego([Hizq], Numero, [Raiz | Cola]).

%Caso recursivo 2 (donde el número es mayor que el nodo actual, se va a la derecha):
juego([_,Raiz,Hder], Numero, [Cabeza | Cola]):-
    >(Numero,Raiz),
    juego([Hder], Numero, [Raiz | Cola]).
