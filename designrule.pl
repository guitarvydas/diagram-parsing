:- dynamic contains/2.
orphanport(ID):-
    ellipse(ID,_),
    \+ contains(_,ID).

printOrphans:-
    bagof(E,orphanport(E),B),
    printOrphan(B).

printOrphan([]).
printOrphan([H|T]):-
    format("Design Rule FATAL Error: orphan port ~w~n", H),
    printOrphan(T).
