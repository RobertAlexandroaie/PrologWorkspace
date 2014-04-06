stergeNnN([H|T],1,[H|T]).
stergeNnN([X,[H|T]],A,L) :-
	A>2,
	A1=A-1,
	N1 = [X,H],
	N1 = [N1,T],
	stergeNnN(N1,A1,L).
stergeNnN([X,[H|T]],A,L) :-
	A=2,
	H=[],
	N1 = [X|XS],
	N1 = [N1,T],
	A1=0,
	stergeNnN(N1,A1,L).

