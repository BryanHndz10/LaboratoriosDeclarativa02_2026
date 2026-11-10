% #1 Generar banco de traslados:

%Trasladándose el campesino solo:
se_traslada([izq, Zorra, Gallina, Granos], [der, Zorra, Gallina, Granos]).
se_traslada([der, Zorra, Gallina, Granos], [izq, Zorra, Gallina, Granos]).
%Trasladando a la zorra:
se_traslada([izq, izq, Gallina, Granos], [der, der, Gallina, Granos]).
se_traslada([der, der, Gallina, Granos], [izq, izq, Gallina, Granos]).
%Trasladando a la gallina:
se_traslada([der, Zorra, der, Granos], [izq, Zorra, izq, Granos]).
se_traslada([izq, Zorra, izq, Granos], [der, Zorra, der, Granos]).
%Trasladando al grano:
se_traslada([der, Zorra, Gallina, der], [izq, Zorra, Gallina, izq]).
se_traslada([izq, Zorra, Gallina, izq], [der, Zorra, Gallina, der]).

% #2 Generar regla de prohibidos:

%Que la gallina y la zorra no estén solas y juntas:
prohibido([Campesino, Pz, Pg, _]):-
        ==(Pz,Pg),
        \==(Campesino,Pz).
%Que la gallina y los granos no estén solos y juntos:
prohibido([Campesino, _, Pg, Pg]):-
        \==(Campesino,Pg).

% #3 Generar regla para almacenar histórico:
historico(UbicacionActual, EstadosAnt,[UbicacionActual | EstadosAnt]):-
    not(member(UbicacionActual, EstadosAnt)).

% #4 Generar caso base y caso recursivo:
juego([der,der,der,der], Historico):-
        write('Fin del juego'), nl, nl,
        reverse(Historico, Solucion),
        write(Solucion), nl, nl.

juego(EstActual, Historico):-
        se_traslada(EstActual,EstSiguiente),
        not(prohibido(EstSiguiente)),
        historico(EstSiguiente, Historico, NuevoEstado),
        juego(EstSiguiente, NuevoEstado).

punto_de_entrada(EI):-
        =(EI, [izq,izq,izq,izq]),
        juego(EI,EI).