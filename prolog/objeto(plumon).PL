objeto(plumon).
persona(maria).
persona(aurora).
animal(leia).
animal(leonardo).
usadesodorante(leia).
usadesodorante(leonardo).
corre(leonardo).
plantas(algas).
%2) Todo objeto o animal o persona que usa  desodorante sabe tocar el saxo.
tocasax(X) :- (objeto(X); animal(X); persona(X)), usadesodorante(X).
% 1) Las algas usan medias rojas.
usamedias(X) :- plantas(X), X==algas.
% 9) Los hippies son felices y pueden tocar el saxo
tocaSax(X) :- feliz(X).

%3) Todo lo que eche humo usa desodorante.
echahumo :- usadesodorante(X).
% 4) Nada ni nadie que usa medias rojas puede tocar el saxo.

% 5) Todas las personas  puede usar un objeto
usa(X) :- persona(X).
% 6) Si una persona usa desodorante no hara la tarea
notarea(X):- usadesodorante(X).
% 7) Si usa desodorante y puede usar un objeto echa humo
echahumo(X) :- usadesodorante(X), usa(X).
% 8)Cualquier animal que corre es feliz
feliz(X) :- corre(X).
feliz(X) :- tocasax(X), hippie(X).

% 10) libre 
