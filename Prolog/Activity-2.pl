% all_even/1 succeeds if all elements in a list are even
all_even([]) :- !.
all_even([H | T]) :- 0 is H mod 2, all_even(T).

% swap_negative/2 that succeeds when the second argument
% is a list that has the same elements as the first arguments but with
% all negative numbers replaced with the atom negative.

swap_negative([], []) :- !.

swap_negative([H | T], [negative | T1]) :-
    H < 0, !, swap_negative(T, T1).

swap_negative([H | T], [H | T1]) :-
    swap_negative(T, T1).

% Write a Prolog rule called bigger_than/3 that, given a query
% bigger_than(Lst, N, Result) succeeds when Result is a list of all items
% bigger than N from Lst.

bigger_than([], _N, []) :- !.

bigger_than([H | T], N, [H | T1]) :-
    H > N, !, bigger_than(T, N, T1).

bigger_than([_H | T], N, T1) :-
    bigger_than(T, N, T1).
