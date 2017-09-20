jugador(juan,9).
jugador(luis,8).
jugador(hugo,8).
jugador(paco,9).
jugador(pedro,9).
jugador(josue,9).
jugador(abel,8).

pareja(X,Y):- jugador(X,Z), jugador(Y,Z), X\=Y.