derivada(Var, C, 0) :-
    number(C),
    atomic(Var), %Esto para verificar que Var está ligada.
    !.

derivada(Var, Var, 1):-
    atomic(Var),
    !.

derivada(Var, C*Var^N, K*Var^Mn1):-
    number(C),
    atomic(Var),
    is(K,*(C,N)),
    is(Nm1,-(N,1)).

derivada(Var, Var^N, N*Var^E):-
    number(N),
    atomic(N),
    is(E,N-1),
    !.
derivada(Var, K*Var, K):-
    number(K),
    atomic(K),
    !.

derivada(Var, log(Var), 1/Var) :-
    !.

derivada(Var, A^X, A^X*log(A)):-
    atomic(A),
    atomic(X),
    !.

derivada(Var, K*Fx, K*DFx):-
    atomic(K),
    is(DFx,derivada),!.

derivada(Var, Fx+Gx, DFx+GFx):-
    derivada(Var,Fx,DFx),
    derivada(Var,Gx,GFx),
    !.

derivada(Var, Fx*Gx, DFX*Gx + Fx*DGx):-
    derivada(Var,Gx,DFx),
    derivada(Var,Fx,GFx),
    !.



%INTEGRALES:

integral(Var, C, C*Var):-
    number(C),
    atomic(Var).

integral(Var, C*Var^N, C/Nm1*Var^Nm1):-
    atomic(Var),
    number(C),
    is(Nm1,+(N,1)).

%%Tarea: Java con Maven. Con IntelliJ IDEA para Java

%MotorSimbolico = Conection.java
%Dependencia para conectar Prolog con Java: TuProlog


