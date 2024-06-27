% ------------------ Modelaje Principal --------------------
% ----------- Jugadores
jugador(ana).
jugador(beto).
jugador(carola).
jugador(dimitri).

% ----------- Civilizaciones
civilizacion(romanos).
civilizacion(incas).

% ----------- Tecnologias
tecno(herreria).
tecno(forja).
tecno(emplumado).
tecno(laminas).
tecno(fundicion).

% ------------------ Ejemplos --------------------
% juegaCon (Civilizacion, Personaje)
juegaCon(romanos, ana).
juegaCon(incas, beto).
juegaCon(romanos, carola).
juegaCon(romanos, dimitri).

%desarrolloTecno (Tecno, Personaje)
desarrolloTecno(herreria, ana).
desarrolloTecno(forja, ana).
desarrolloTecno(emplumado, ana).
desarrolloTecno(laminas, ana).

desarrolloTecno(herreria, beto).
desarrolloTecno(forja, beto).
desarrolloTecno(fundicion, beto).

desarrolloTecno(herreria, carola).

desarrolloTecno(herreria, dimitri).
desarrolloTecno(fundicion, dimitri).

% ------------------ Predicados --------------------
% ------------ Punto 2 (BESTIA)

% Como minimo debe cumplir esto para ser experto en metales
minimoMetales(Jugador):-
    jugador(Jugador), 
    desarrolloTecno(herreria, Jugador),
    desarrolloTecno(forja, Jugador).

% Primer forma para ser experto en metales
esExpertoEnMetales(Jugador):-
    minimoMetales(Jugador),
    desarrolloTecno(fundicion, Jugador),
    not(juegaCon(romanos, Jugador)).

% Segunda forma para ser experto en metales
esExpertoEnMetales(Jugador):-
    minimoMetales(Jugador),
    not(desarrolloTecno(fundicion, Jugador)),
    juegaCon(romanos, Jugador).

% ------------ Punto 2 (ELEGANTE)
esExpertoEnMetaless(Jugador) :-
    jugador(Jugador),
    minimoMetales(Jugador),
    (desarrolloMetales(Jugador) ; juegaMetales(Jugador)).

desarrolloMetales(Jugador) :-
    desarrolloTecno(fundicion, Jugador),
    \+ juegaCon(romanos, Jugador).

juegaMetales(Jugador) :-
    juegaCon(romanos, Jugador),
    \+ desarrolloTecno(fundicion, Jugador).

% ------------ Punto 3
% ------------ Punto 4
% ------------ Punto 5
