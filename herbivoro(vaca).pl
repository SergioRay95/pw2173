herbivoro(vaca).
herbivoro(oveja).
carnivoro(leon).
hortaliza(tomate).
hortaliza(zanahoria).
fruta(manzana).
pescado(besugo).
carne(salchicha).
fideos(spaghetti).
come(X,Y) :- (herbivoro(X), (hortaliza(Y); fruta(Y))); (carnivoro(X), (herbivoro(Y); pescado(Y), carne(Y))).