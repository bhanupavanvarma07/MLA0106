% Pattern Matching

match(X, X).

start :-
    write('Enter first value: '),
    read(A),
    write('Enter second value: '),
    read(B),

    ( match(A, B) ->
        write('Pattern Matched')
    ;
        write('Pattern Not Matched')
    ).
