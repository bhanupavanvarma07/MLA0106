% Planets database

planet(mercury).
planet(venus).
planet(earth).
planet(mars).
planet(jupiter).
planet(saturn).
planet(uranus).
planet(neptune).

start :-
    write('Enter planet name: '),
    read(Name),
    ( planet(Name) ->
        write('It is a planet in the solar system.')
    ;
        write('Not found in database.')
    ).
