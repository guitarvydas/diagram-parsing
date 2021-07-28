containsport(R,C):-
    rightsideinsideBB(C,R).
containsport(R,C):-
    leftsideinsideBB(C,R).

rightsideinsideBB(Circle,Rect):-
    rect(Rect,''),
    ellipse(Circle,''),
    l(Rect,Rl),   t(Rect,Rt),   r(Rect,Rr),   b(Rect,Rb),
    l(Circle,Cl), t(Circle,Ct), r(Circle,Cr), b(Circle,Cb),
    Cl =< Rl,
    Ct >= Rt, Ct =< Rb,
    Cr >= Rl, Cr =< Rr,
    Cb >= Rt, Cb =< Rb.
leftsideinsideBB(Circle,Rect):-
    rect(Rect,''),
    ellipse(Circle,''),
    l(Rect,Rl),   t(Rect,Rt),   r(Rect,Rr),   b(Rect,Rb),
    l(Circle,Cl), t(Circle,Ct), r(Circle,Cr), b(Circle,Cb),
    Cl =< Rr, Cl >= Rl,
    Ct >= Rt, Ct =< Rb,
    Cr >= Rr,
    Cb >= Rt, Cb =< Rb.
