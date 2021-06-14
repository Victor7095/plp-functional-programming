-module(ex7).
-import(lists, [filter/2]).
-export([splitEvenOdds/1]).

splitEvenOdds([]) -> [];
splitEvenOdds(X) ->{lists:filter(fun (Y) -> Y rem 2 == 1 end, X), 
                    lists:filter(fun (Y) -> Y rem 2 == 0 end, X)}.

% c(ex7).
% ex7:splitEvenOdds([1,2,3,4,5,6,7]).