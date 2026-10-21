%hechos
arquero(dibu).
jugador(messi).
jugador(toro).
jugador(dimas).
jugador(cr7).
jugadorBr(ronaldo).

%reglas
%selecciones
seleccionArg(X) :- jugador(X), X \== cr7.
seleccionArgArquero(X) :- arquero(X).
seleccionPortu(cr7).

%campeon del mundo: 
campeonMundial(X) :- jugador(X); arquero(X), X \== cr7.

%campeonesMundial:
campeonesDelMundo(X, Y) :- campeonMundial(X), campeonMundial(Y), X \== Y.

%arquero seleccion:
arqueroSelectaArg(X) :- arquero(X). 

%jugadorBR
seleccionBr(X) :- jugadorBr(X).

%consultas para realizar.
%¿Messi juega en la Selección Argentina?
%¿Messi ganó la Copa del Mundo?
%¿Qué jugadores ganaron la Copa del Mundo?
%¿Qué jugadores son campeones del mundo?
%¿Messi juega en la Selección de Brasil?
%¿Cristiano Ronaldo es campo del mundo?
%¿Quien es el Arquero de la seleccion campeona del mundo?