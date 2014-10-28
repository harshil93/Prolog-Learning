%  city1 -> city2 -> city3 -> city4 -> city5 -> city6
% connected is a functor and following are the facts how the cities are connected

connected(city1,city2).
connected(city2,city3).
connected(city3,city4).
connected(city4,city5).
connected(city5,city6).

% One can always reach the city where he/she is in :)
%Rule 1
can_get(X,X):- true.

%Base case - if X and Y are connected
%Rule 2
can_get(X,Y):- connected(X,Y).

%Recursion - Goto the next possible city and see whether he can go to the destination from the next city
%Rule 3
can_get(X,Y):- connected(X,Z),can_get(Z,Y).
