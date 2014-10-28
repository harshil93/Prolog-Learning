%% Following are the facts given in the problem
%% largerInSize is a functor denoting the first arguement is greater than second
largerInSize('Rajasthan','Madhya Pradesh').
largerInSize('Madhya Pradesh','Maharashtra').
largerInSize('Maharashtra','Andhra Pradesh').
largerInSize('Andhra Pradesh','Uttar Pradesh').

%% Base case of recursion - if it is one of the facts
%% Rule 1
largerThan(X,Y):- largerInSize(X,Y).

%% Rule 2
%% Recursion - Find a city Z which is smaller than X (X is larger then Z) and try to find cities which are smaller than Z
largerThan(X,Y):-largerInSize(X,Z),largerThan(Z,Y).
