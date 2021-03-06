clf  % clear current figure, deletes from the current figure all graphics
     % objects
clear all  % delete all existing variables. all - is not a good habit

f = [8 10 7 6 11 9];  % our NOT inverted O.F. because the o.f. is minimize
% matrix with inequality constraints:
A = [12 9 25 20 17 12
     35 42 18 31 56 49
     37 53 28 24 29 20];
A = -A;
b = [-60; -150; -125];  % vector with results of our inequality constraints
lb = zeros(6,1);  % lower boundary, because x ≥ 0
ub = ones(6,1);  % upper boundary, because x ≤ 1

[x,fval] = linprog(f,A,b,[0 0 0 0 0 0],0,lb,ub);
% [0 0 0 0 0 0] - it's our inequality constraints,  not the result of these
% inequalities