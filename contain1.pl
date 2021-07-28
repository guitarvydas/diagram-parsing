allContains1:-
    bagof(R1,(rect(R1,_),rect(R2,_),R1 \= R2,containment(R1,R2)),_).

containment(R1,R2):-
    rect(R1,_),
    rect(R2,_),
    completelyInside(R2,R1),
    format("contains1(~w,~w).~n",[R1,R2]).

% succeeds only if B's bounding box is fully inside A's bounding box, inclusively
completelyInside(B,A):-
    l(B,Bl),
    t(B,Bt),
    r(B,Br),
    b(B,Bb),
    l(A,Al),
    t(A,At),
    r(A,Ar),
    b(A,Ab),
    Bl >= Al,
    Bl =< Ar,
    Br >= Al,
    Br =< Ar,
    Bt >= At,
    Bt =< Ab,
    Bb >= At,
    Bb =< Ab.
    
    
