% Derivada de logaritmo natural de una variable:
d(Var, log(Var), 1/Var):-
    atomic(x),
    !.
% Derivada del seno:
d(Var, sin(Var), cos(Var)):-
    atomic(Var).

%Derivada de la suma de dos funciones:
d(Var, F+G, DF+DG):-
    atomic(Var),
    %F y G me las van a dar, DF y DF las tengo 
    %que calcular (principio para construir f. recursivas).
    d(Var, F, DF),
    d(Var, G, DG),

%Derivada de la resta de dos funciones:
d(Var, F-G, DF-DG):-
    atomic(Var),
    %F y G me las van a dar, DF y DF las tengo 
    %que calcular (principio para construir f. recursivas).
    d(Var, F, DF),
    d(Var, G, DG),
