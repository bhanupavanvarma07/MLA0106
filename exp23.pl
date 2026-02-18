% Family relationships

parent(ram, sita).
parent(ram, raju).
parent(sita, anu).

male(ram).
male(raju).
female(sita).
female(anu).

father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).

start :-
    write('Enter parent name: '),
    read(Name),
    parent(Name, Child),
    write('Child: '), write(Child).
