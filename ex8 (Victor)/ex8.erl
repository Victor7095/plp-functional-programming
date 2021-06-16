-module(ex8).
-export([conjuntoDasPartes/1]).

conjuntoDasPartes([]) -> [[]];
conjuntoDasPartes([H|T]) -> PT = conjuntoDasPartes(T),
  [ [H|X] || X <- PT ] ++ PT.