% Monkey Banana Problem (simple rule-based)

can_get_banana(on_box, under_banana).
can_get_banana(climb_box, under_banana).

start :-
    write('Enter monkey action (on_box/climb_box): '),
    read(Action),
    ( can_get_banana(Action, under_banana) ->
        write('Monkey can reach the banana.')
    ;
        write('Monkey cannot reach the banana.')
    ).
