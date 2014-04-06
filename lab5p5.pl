eliminadupcon([],[]).
eliminadupcon([H,H|T],L) :- eliminadupcon([H|T],L),!.
eliminadupcon([H|T],[H|Xs]):- eliminadupcon(T,Xs),!.
