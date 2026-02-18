% Birds that can fly
can_fly(sparrow).
can_fly(pigeon).
can_fly(parrot).

% Birds that cannot fly
cannot_fly(ostrich).
cannot_fly(penguin).

start :-
    write('Enter bird name: '),
    read(Bird),
    ( can_fly(Bird) ->
        write('This bird can fly.')
    ; cannot_fly(Bird) ->
        write('This bird cannot fly.')
    ;
        write('Bird not found in database.')
    ).
