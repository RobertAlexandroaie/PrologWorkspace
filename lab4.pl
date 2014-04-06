f(0,1).
f(X,R):-
Y is X-1,
f(Y,R1),
R is X*R1.
