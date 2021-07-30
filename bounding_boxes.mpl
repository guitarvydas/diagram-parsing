input fact rect/2
input fact ellipse/2

makebb (ID) =
  dobject (ID, _)
  format ("l(~w, ~w).~n", [ID, ID.x])
  format ("t(~w, ~w).~n", [ID, ID.y])
  format ("r(~w, ~w).~n", [ID, ID.x + ID.w])
  format ("b(~w, ~w).~n", [ID, ID.y + ID.h])

###
  _._ :{pre} = %{assoc($1,$2)}x($1,${toupper($2)}),
  _._        = %{refassoc($1,$2)}${toupper($2)}



:- dynamic(rect/2).
:- dynamic(ellipse/2).

makebb(ID):-
    dobject(ID,_),
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
    setof(ID,makebb(ID),_).

dobject(ID,_):-rect(ID,_).
dobject(ID,_):-ellipse(ID,_).
