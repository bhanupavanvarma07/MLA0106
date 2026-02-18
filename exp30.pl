% Facts
fever.
cough.

% Rule
disease(flu) :- fever, cough.

start :-
    write('Checking disease flu...'), nl,
    ( disease(flu) ->
        write('Flu confirmed by backward chaining')
    ;
        write('Flu not confirmed')
    ).
