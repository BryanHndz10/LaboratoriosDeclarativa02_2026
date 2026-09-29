%Ejercicio seleccionado:
%Dado un número N, se debe sumar N con todos los números anteriores hasta llegar a 1.


%Caso Base:
sumar_retro(1,1).
%Caso recursivo:
sumar_retro(N,Acumulado):-
    >(N,1),
    is(N1,N-1),
    sumar_retro(N1,NuevoAcumulado),
    is(Acumulado,NuevoAcumulado+N).

    
