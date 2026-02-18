% Simple Best First Search example

edge(a, b, 4).
edge(a, c, 2).
edge(b, d, 5).
edge(c, d, 1).

heuristic(a, 7).
heuristic(b, 2).
heuristic(c, 1).
heuristic(d, 0).

start :-
    write('Enter start node: '),
    read(Start),
    write('Enter goal node: '),
    read(Goal),
    bestfs(Start, Goal).

bestfs(Node, Node) :-
    write('Reached goal: '), write(Node), nl.

bestfs(Current, Goal) :-
    edge(Current, Next, _),
    heuristic(Next, H),
    H >= 0,
    write('Moving to: '), write(Next), nl,
    bestfs(Next, Goal).
