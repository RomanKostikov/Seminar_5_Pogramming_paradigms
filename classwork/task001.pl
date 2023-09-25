% % Rules
% lenn([], 0).
% lenn([_|T], Len) :-
%     lenn(T, Len1), Len is Len1 + 1.

% % Query
% ?- lenn([1,2,3,4,5,6,7,8], _X), write(_X).

female(galina).
female(olga).
female(anastasiya).
female(lubov).
female(vera).
male(vladimir).
male(sergey).
male(aleksey).
male(aleksandr).
male(serafim).

parent(lubov, vera).
parent(sergey, vera).
parent(vladimir, aleksey).
parent(galina, aleksey).
parent(aleksey, olga).
parent(vera, olga).
parent(aleksey, anastasiya).
parent(vera, anastasiya).
parent(anastasiya, serafim).
parent(aleksandr, serafim).


grandpa(X, Y) :- parent(X, Z), parent(Z, Y), male(X).
father(X, Y) :- parent(X, Y), male(X).

?- father(X, vera), write(X), write('\n').
?- grandpa(X, serafim), write(X).