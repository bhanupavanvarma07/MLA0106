% Vowel facts
vowel(a).
vowel(e).
vowel(i).
vowel(o).
vowel(u).

count_vowels([], 0).

count_vowels([H|T], Count) :-
    count_vowels(T, Rest),
    ( vowel(H) ->
        Count is Rest + 1
    ;
        Count is Rest
    ).

start :-
    write('Enter list (example [a,b,e,i]): '),
    read(List),
    count_vowels(List, Count),
    write('Number of vowels: '),
    write(Count).
