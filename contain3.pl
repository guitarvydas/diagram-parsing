factContains(ParentR,ChildR):-
    contains1(ParentR,ChildR),
    \+ deepcontains(ParentR,ChildR).

allContainedChildren(R,Bag):-
    bagof(Child,factContains(R,Child),Bag).

allContains(CBag):-
    bagof([R,Bag],allContainedChildren(R,Bag),CBag).

printContainedChildren(R):-
    allContainedChildren(R,Children),
    printContainedChild(R,Children).

printContainedChild(_,[]).
printContainedChild(R,[H|T]):-
    format("contains(~w,~w).~n",[R,H]),
    printContainedChild(R,T).

printAllDirectContains:-
    bagof(R,(rect(R,_),printContainedChildren(R)),_).
