:- dynamic last/1.

% Prolog lists & pairs
% PAIR [Head | Tail]
% List [] or [ Head | TailIsAList]

% P01 (*) Find the last element of a list
% ?- my_last(X,[a,b,c,d]).
% = d

my_last(H|T) :-
    last(H|T).