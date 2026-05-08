
% Prolog lists & pairs
% PAIR [Head | Tail]
% List [] or [ Head | TailIsAList]

% Rule pairparts that unifies with a pair and get the head and tail seperately
pairparts([H|T],H,T).

first([H|_T], H).