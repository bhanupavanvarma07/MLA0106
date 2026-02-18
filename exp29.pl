% Facts
fever.
cough.

% Rule
disease(flu) :- fever, cough.

start :-
    ( disease(X) ->
        write('Disease diagnosed: '), write(X)
    ;
        write('No disease found')
    ).
