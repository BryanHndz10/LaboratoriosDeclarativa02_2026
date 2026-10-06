%Contar la cantidad de nodos dentro de un árbol:


%caso base:
cantidad_de_nodos([],0):- !.

%caso recursivo:
cantidad_de_nodos([SAI,_,SAD], Cantidad):-
    cantidad_de_nodos(SAI,CantidadAcumulada1),
    cantidad_de_nodos(SAD,CantidadAcumulada2),
    is(Cantidad, +(+(CantidadAcumulada1,CantidadAcumulada2),1)).


%Ejercicio 2: Contar la cantidad de elementos menores o iguales a un número dado:

%Caso base:
contar_menores([],_,0) :- !.

%Caso recursivo:
contar_menores([SAI, Dato, SAD], N, Cantidad):-
    contar_menores(SAI,N,Cantidad1),
    contar_menores(SAD,N,Cantidad2),
    (=<(Dato,N) ->
        is(Cantidad,+(+(Cantidad1,Cantidad2),1))
        ;
        is(Cantidad,+(+(Cantidad1,Cantidad2),0))
    ).
