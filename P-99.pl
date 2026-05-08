% P01 (*) Find the last element of a list.
% The last element of a list is the head of the list if the tail is empty.
% Otherwise, it is the last element of the tail.

% --- Implementation ---

% Base case: If the list has only one element `X`, then `X` is the last element.
my_last(X, [X]).

% Recursive step: The last element `X` of a list `[_|T]` is the last element of its tail `T`.
my_last(X, [_|T]) :-
    my_last(X, T).

% --- How to test ---
% ?- my_last(X, [a,b,c,d]).
% X = d
%
% ?- my_last(X, [a]).
% X = a