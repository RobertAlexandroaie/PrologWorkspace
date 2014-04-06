f2(X, Y) :-
f2(X, 1, Y).

f2(0,A,A).
f2(X,A,R) :-
Y is X - 1,
A1 is A * X,
f2(Y,A1,R).

