parent(ava,bob).
parent(mike,bob).
parent(emma, sophia).
parent(william, sophia).
parent(emma, mia).
parent(william, mia).
parent(bob,alice).
parent(bob,steve).
parent(mia,alice).
parent(mia,steve).
parent(liam,alexander).
parent(liam,evelyn).
parent(liam,isabella).
parent(sophia,alexander).
parent(sophia,evelyn).
parent(sophia,isabella).
sister(mia, sophia).
sister(mia, henry).
sister(sophia, henry).
sister(alice,steve).
sister(evelyn, alexander).
sister(evelyn, isabella).
sister(isabella, alexander).
brother(henry, mia).
brother(henry, sophia).
brother(steve,alice).
brother(alexander,evelyn).
brother(alexander,isabella).
grandparent(ava,alice).
grandparent(ava,steve).
grandparent(mike,alice).
grandparent(mike,steve).
grandparent(william,alice).
grandparent(william,steve).
grandparent(william,alexander).
grandparent(william,evelyn).
grandparent(william,isabella).
grandparent(emma,alice).
grandparent(emma,steve).
grandparent(emma,alexander).
grandparent(emma,evelyn).
grandparent(emma,isabella).

% 1. Write a Prolog rules uncle/2 and aunt/2 that succeeds when the
% first argument is the uncle (or aunt) of the second argument . (For
% simplification, an uncle is a brother and an aunt is a sister of a
% parent.)
uncle(Uncle, Kid) :-
    parent(Parent, Kid),
    brother(Uncle, Parent).
aunt(Aunt, Kid) :-
    parent(Parent, Kid),
    sister(Aunt, Parent).

% 2. Write a Prolog rule for cousin/2 that succeeds when the arguments
% are cousins that have the same grandparent. (For simplification,
% brothers & sisters can be considered cousins.)
cousin(Kid1, Kid2) :-
    grandparent(Grandparent, Kid1),
    grandparent(Grandparent, Kid2).

% 3. Write a Prolog program fib/2 to compute the nth Fibonacci number.
fib(0,0) :- !.
fib(1,1) :- !.
fib(N,Res) :-
    N > 1,
    N1 is N-1,
    N2 is N-2,
    fib(N1,Res1),
    fib(N2,Res2),
    Res is Res1 + Res2.

% 4. Write Prolog rules for car/2 and cdr/2 where the first argument
% is list and the second argument is the car (first element) or
% cdr(the list with the first element removed) of that list,
% respectively.
car([H | _T], H).
cdr([_H | T], T).

% 5. Write a Prolog rule double/2 that succeeds when the
% 2nd argument is the 1st argument doubled. Your rule should work for
% integers and lists.
double([], []) :- !.
double([H | T], [H1 | T1]) :-
  double(H, H1),
  double(T, T1).

double(X, Y) :-
    number(X), !,
    Y is 2 * X.

double(X, [X|X]).

% 6. Write a Prolog rule member_of/2 that succeeds if the second
% argument is a list and the first argument is a member of that list.
% Your rule should fail otherwise.
member_of(X, [X | _T]).
member_of(X, [_H | T]) :- member_of(X, T).

% 7. Write a Prolog rule get_odds/2 where the first argument is a list
% and the second argument is a list of the odd numbers in that list.
get_odds([], []) :- !.

get_odds([H | T], T1) :-
    0 is H mod 2,
    get_odds(T, T1).

get_odds([H | T], [H | T1]) :-
    get_odds(T, T1).

% Write a Prolog rule sum_all/2 that succeeds when the first
% argument is a list and the second argument is the sum of all elements
% of that list.
sum_all([],0) :- !.
sum_all([H | T], Sum) :-
    sum_all(T, Tsum),
    Sum is H + Tsum.

% Write a Prolog rule mult_all/2 that succeeds when the first
% argument is a list and the second argument is the product of all
% elements of the list.
mult_all([],1) :- !.
mult_all([H | T], Prod) :-
    mult_all(T, Tprod),
    Prod is H * Tprod.

% Write a Prolog rule square_list/2 that succeeds when the first
% argument is a list and the second argument is a list of the elements
% in that list squared.
square_list([], []).
square_list([H | T], [H1 | T1]) :-
    H1 is H ** 2,
    square_list(T, T1).
