makebb(ID):-
    rect(ID,_),
    x(ID,X),
    y(ID,Y),
    w(ID,Width),
    h(ID,Height),
    format("l(~w, ~w).~n", [ID,X]),
    format("t(~w, ~w).~n", [ID,Y]),
    W is X + Width,
    format("r(~w, ~w).~n", [ID,W]),
    H is Y + Height,
    format("b(~w, ~w).~n", [ID,H]).

makeAllBB:-
    bagof(ID,makebb(ID),_).
