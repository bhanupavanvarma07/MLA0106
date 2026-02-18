% Simple database of Name and DOB

person(john, '12-05-2000').
person(ravi, '10-08-2001').
person(sita, '25-12-2002').

start :-
    write('Enter name to find DOB: '),
    read(Name),
    person(Name, DOB),
    write('Date of Birth: '),
    write(DOB).
