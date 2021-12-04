lastName(X,Z) :- fatherOf(Y,X), lastName(Y,Z).
married(X,Y) :- fatherOf(X,Z), motherOf(Y,Z).
married(X,Y) :- married(Y,X).
dogOwner(X) :- hasPet(X,Y), dog(Y).
hasPet(X,Z) :- hasPet(Y,Z), liveTogether(X,Y).
sibilings(X,Y) :- fatherOf(Z,X), fatherOf(Z,Y), X!=Y.
liveTogether(X,Y) :- sibilings(X,Y).
liveTogether(X,Y) :- fatherOf(X,Y).
liveTogether(X,Y) :- motherOf(X,Y).
liveTogether(X,Y) :- married(X,Y).
liveTogether(X,Y) :- liveTogether(Y,X).
parent(X) :- fatherOf(X,_).
parent(X) :- motherOf(X,_).