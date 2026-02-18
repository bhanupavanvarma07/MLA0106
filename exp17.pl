% Sum of integers from 1 to N

sum_n(0, 0).
sum_n(N, Sum) :-
    N > 0,
    N1 is N - 1,
    sum_n(N1, S1),
    Sum is S1 + N.

start :-
    write('Enter a number: '),
    read(N),
    sum_n(N, Sum),
    write('Sum = '),
    write(Sum).
