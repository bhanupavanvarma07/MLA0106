% Medical diagnosis rules

disease(fever, flu).
disease(cough, cold).
disease(headache, migraine).

start :-
    write('Enter symptom: '),
    read(Symptom),
    disease(Symptom, Disease),
    write('Possible disease: '),
    write(Disease).
