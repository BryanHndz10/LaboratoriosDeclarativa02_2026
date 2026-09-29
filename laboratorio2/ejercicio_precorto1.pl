
%El Caso de Lord Henry:

%Personas involucradas:
persona(alice).
persona(robert).
persona(clara).
persona(james).

%se_encuentra_en(lord_henry, biblioteca).
se_encuentra_en(alice, sala).
se_encuentra_en(robert, cocina).
se_encuentra_en(clara, biblioteca).
se_encuentra_en(james, estudio).

esposa(alice, lord_henry).
sobrina(clara, lord_henry).
empleado(robert, lord_henry).
socio(james, lord_henry).

porta_arma(alice, veneno).
porta_arma(robert, cuchillo).
porta_arma(clara, cuerda).
porta_arma(james, pistola).

motivo(alice, herencia).
motivo(robert, venganza).
motivo(clara, deuda).
motivo(james, desacuerdos).

%Reglas lógicas:
motivo_para_el_crimen(Persona) :- motivo(Persona, _).
estaba_en_el_lugar_del_crimen(Persona) :- se_encuentra_en(Persona, biblioteca).
acceso_al_arma(Persona) :- porta_arma(Persona, cuerda).

oportunidad_para_el_crimen(Persona) :-
    motivo_para_el_crimen(Persona),
    estaba_en_el_lugar_del_crimen(Persona).

culpable(Persona) :-
    oportunidad_para_el_crimen(Persona),
    acceso_al_arma(Persona).
