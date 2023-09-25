find_max([X], X).
find_max([C|T], Max) :-
    find_max(T, Max1),
    (C > Max1, Max is C; Max is Max1).

?- find_max([1, 6, 2, 9, 3], X), write(X).
