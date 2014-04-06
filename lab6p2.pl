size(4, 3).
map(1,1, 'Te afli la marginea unei paduri.11').
map(1,2, 'Esti departe în padure.12').
map(1,3, 'Esti la marginea padurii.13').
map(2,1, 'Vezi marginea unei paduri în nord.21').
map(2,2, 'Esti in padure.22').
map(2,3, 'Esti in padure.23').
map(3,1, 'În nord este o padure deasa.31').
map(3,2, 'Esti in mijlocul padurii.32').
map(3,3, 'Esti la marginea padurii.33').
map(4,1, 'În nord este o padure deasa.41').
map(4,2, 'Esti in padure42').
map(4,3, 'În nord este o padure deasa.43').
enter(1,1, 'Mult noroc, exploratorule!'). 

:- dynamic explorer/2.

start :-
	retractall(explorer(_,_)),
	enter(X,Y,M),
	assert(explorer(X,Y)),
	!,
	write(M).


south :-
	explorer(X, Y),
	size(MX, _),
	X < MX,
	X1 is X + 1,
	retract(explorer(X, Y)),
	assert(explorer(X1, Y)),
	map(X1, Y, M),!,
	write(M).

north :-
	explorer(X, Y),
	X>1,
	X1 is X - 1,
	retract(explorer(X, Y)),
	assert(explorer(X1, Y)),
	map(X1, Y, M),!,
	write(M).

east :-
	explorer(X, Y),
	size(_, MY),
	Y < MY,
	Y1 is Y + 1,
	retract(explorer(X, Y)),
	assert(explorer(X, Y1)),
	map(X, Y1, M),!,
	write(M).

west :-
	explorer(X, Y),
	Y>1,
	Y1 is Y - 1,
	retract(explorer(X, Y)),
	assert(explorer(X, Y1)),
	map(X, Y1, M),	!, write(M).


teleport :-
	explorer(X,Y),
	size(Xmax,Ymax),
        X1 is random(Xmax) + 1,
	Y1 is random(Ymax) + 1,
	retract(explorer(X, Y)),
	assert(explorer(X1, Y1)),
	map(X1, Y1, M),	!,
	write(M).
















