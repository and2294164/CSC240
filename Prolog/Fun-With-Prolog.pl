% Write a rule introduction/2 that creates a greeting in a list
introduction(A, B,[my, name, is, A, and, i, am, from, B]).

two_by_two(A,B,C,D,[[A|B] | [C|D]]).

three_by_three(A,B,C,D,E,F,G,H,I,[[A,B,C],[D,E,F],[G,H,I]]).

rps(rock,paper,paper).
rps(rock,scissors,rock).
rps(rock,rock,tie).
rps(paper,scissors,scissors).
rps(paper,rock,paper).
rps(paper,paper,tie).
rps(scissors,rock,rock).
rps(scissors,paper,scissors).
rps(scissors,scissors,tie).
rps(_,_,"what are you even doing?").

subset([],_).
subset([H|T],S) :- member(H,S), subset(T,S).

set_equal(S1, S2) :- subset(S1,S2), subset(S2,S1).

nope(0,[]).
nope(Num,[nope|T]) :-
    Temp is Num - 1,
    nope(Temp,T).

first_half().
