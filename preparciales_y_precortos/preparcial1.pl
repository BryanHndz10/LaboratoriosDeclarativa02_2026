%Base de Conocimiento:
aparece_en(arturo, y_gododdin).
aparece_en(arturo, historia_brittonum).
aparece_en(arturo, historia_de_los_reyes_de_gran_bretana).
aparece_en(arturo, thomas_malory).

fuente(y_gododdin, siglo(6,_)).
fuente(y_gododdin, siglo(7,_)).
fuente(historia_brittonum, siglo(9,_)).
fuente(historia_de_los_reyes_de_gran_bretana, siglo(12,_)).
fuente(thomas_malory, siglo(15,_)).

posee(arturo, excalibur).

% Regla 1: Arturo es histórico si aparece en fuentes anteriores al siglo X

historico(X) :-   aparece_en(X, Fuente),     fuente(Fuente, siglo(A,_)),     A < 10.
% p = Arturo es histórico.
% q = aparece en fuentes anteriores al siglo X.
% p -> q

% Regla 2: Arturo es mítico si aparece en fuentes posteriores al siglo XI

mitico(X) :-   aparece_en(X, Fuente),  fuente(Fuente, siglo(A,_)),     A >= 11.
% p = Arturo es mítico.
% q = aparece en fuentes posteriores al siglo XI.
% p -> q

% Regla 3: Arturo es legendario si posee objetos simbólicos
% p = Arturo es legendario.
% q = posee objetos simbólicos.
% p -> q
legendario(X) :-  posee(X, excalibur).

% Regla 4: Arturo es ambiguo si aparece en fuentes históricas y míticas
% p = Arturo es ambiguo.
% q = aparece en fuentes históricas.
% r = aparece en fuentes míticas.
% p -> q ^ r
ambiguo(X) :-  historico(X),  mitico(X).

% Regla 5: Arturo es literario si aparece en fuentes del siglo XV
% p = Arturo es literario.
% q = aparece en fuentes del siglo XV.
% p -> q
literario(X) :-   aparece_en(X, thomas_malory).