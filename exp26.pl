% Fruit and colors

fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grapes, green).
fruit_color(orange, orange).

start :-
    write('Enter fruit name: '),
    read(Fruit),
    fruit_color(Fruit, Color),
    write('Color: '),
    write(Color).
