vertical(line(point(X,_),point(T,_))) :- X=T.
horizontal(line(point(_,Y),point(_,T))) :- Y=T.


visits(person, Bldg, Sts, cost(X)) :-
	building(Bldg),
	status(Sts),
	accesibil(Sts),
	X=4 ; X=2.

building(facultate).
building(primarie).
building(mall).
building("WTC").
building(muzeu).

status(deschis).
status(inchis).

accesibil(deschis).



