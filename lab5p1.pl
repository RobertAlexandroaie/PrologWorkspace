p(a1,b1).
p(a2,b1).
p(b1,c1).
p(b2,c1).
stramos(X, Y) :- p(X, Y).
stramos(X, Y) :- stramos(X, Z), p(Z, Y).
