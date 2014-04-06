p(a). p(b). p(c).
sunt_p([]).
sunt_p([H|T]) :- p(H), sunt_p(T). 

apartine(X, [X|Ys]).
apartine(X, [Y|Ys]) :- apartine(X, Ys).

prefix([], Ys).
prefix([X|Xs], [X|Ys]) :- prefix(Xs, Ys).
suffix(Xs, Xs).
suffix(Xs, [Y|Ys]) :- suffix(Xs, Ys).
