% Student-Teacher-Subject database

record(ravi, math, kumar).
record(sita, physics, ramesh).
record(ajay, chemistry, kumar).

start :-
    write('Enter student name: '),
    read(Student),
    record(Student, Subject, Teacher),
    write('Subject: '), write(Subject), nl,
    write('Teacher: '), write(Teacher).
