:- [hechos].

menor_de_30_anios(X):-
    edad(X,Y),Y<30.

porta_arma_de_fuego(X):-
    arma(X,pistola).

pelean(X,Y):-
    se_encuentra(X,Z),
    aparecen(Y,Z),
    X \= Y.