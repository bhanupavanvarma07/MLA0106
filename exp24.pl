% Diet suggestions

diet(diabetes, 'Avoid sugar, eat vegetables').
diet(obesity, 'Low fat diet and exercise').
diet(anemia, 'Iron rich foods').
diet(fever, 'Light food and fluids').

start :-
    write('Enter disease: '),
    read(Disease),
    diet(Disease, Advice),
    write('Diet Advice: '),
    write(Advice).
