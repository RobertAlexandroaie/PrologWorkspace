fibo(1,1).
fibo(2,1).
fibo(X,R):-
	Y1 is X-1,
	fibo(Y1,R1),
	Y2 is X-2,
	fibo(Y2,R2),
	R is R1+R2.
