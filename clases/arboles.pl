%Recorrido en Preorden:

%caso base:
preorden([]):- !.

%caso recursivo:
preorden([SAI, Dato, SAD]):-
    writeln(Dato),
    preorden(SAI),
    preorden(SAD).

%Recorrido postorden:
%caso base:
postorden([]):- !.

%caso recursivo:
postorden([SAI, SAD, Dato]):-
    preorden(SAI),
    preorden(SAD),
    writeln(Dato).


%Recorrido inorden:
%caso base:
inorden([]):- !.

%caso recursivo:
inorden([SAI, SAD, Dato]):-
    inorden(SAI),
    writeln(Dato),
    inorden(SAD).

%buscar número "n" dentro del árbol binario de búsqueda:
buscar_n(_,[]):-
        writeln("numero no encontrado"),
        !.

buscar_n(N,[_,N,_]):-
        writeln("numero encontrado"),
        !.

buscar_n(N,[SAI,Dato,_]):-
        <(N,Dato),
        buscar_n(N,SAI).

buscar_n(N,[_,Dato,SAD]):-
        >(N,Dato),
        buscar_n(N,SAD).

%Otra opción de combinar ambas conficionales en una sola regla:
buscar_n(N,[_,Dato,SAD]):-
        (<(N,Dato),
        buscar_n(N,SAI);

        >(N,Dato),
        buscar_n(N,SAD)).

%Una tercera opción para simplificar la escritura de la regla anterior.
buscar_n(N,[_,Dato,SAD]):-
        (<(N,Dato)->
        buscar_n(N,SAI)
        ;
        buscar_n(N,SAD)).

%Calcula la altura de un árbol:
altura(H,[]):-
    is(H,1).

altura(H,[SAI,_,SAD]) :-
    altura(H1,[SAI]),
    altura(H1,[SAD]),
    is(H,H1+1),
