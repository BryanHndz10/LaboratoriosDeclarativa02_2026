%recursión por cola:
%caso base:
power(_,0,1) :- !.

%caso recursivo:
power(Base,Exponente,Respuesta):- 
    Exponente1 is -(Exponente,1),
    power(Base,Exponente1,Respuesta1),
    Respuesta is Base * Respuesta1.

% Predicado público (interfaz)
potencia_cola(Base, Exponente, Resultado) :-
    Exponente >= 0,
    potencia_aux(Base, Exponente, 1, Resultado). % Iniciamos el acumulador en 1

% Caso base: Cuando el exponente es 0, el acumulador es el resultado final
potencia_aux(_, 0, Acumulador, Acumulador) :- !.

% Caso recursivo por cola
potencia_aux(Base, Exponente, Acumulador, Resultado) :-
    Exponente > 0,
    NuevoAcum is Acumulador * Base,          % 1. Operación previa
    SigExp is Exponente - 1,
    potencia_aux(Base, SigExp, NuevoAcum, Resultado). % 2. Última llamada (sin pendientes)
