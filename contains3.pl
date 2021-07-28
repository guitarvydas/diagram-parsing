factContains(ParentR,ChildR):-
    contains1(ParentR,ChildR),
    \+ deepcontains(ParentR,ChildR).

allContainedChildren(R,Bag):-
    bagof(Child,factContains(R,Child),Bag).

