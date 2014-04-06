fiboc(X,Y):- fiboc(X,1,1,Y).

fiboc(1, A, _, A).
fiboc(N, A, B, R) :-
	N1 is N - 1,
	Sum is A + B,
	fiboc(N1, B, Sum, R).




