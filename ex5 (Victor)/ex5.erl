-module(ex5).
-import(lists, [member/2]).
-export([interseccao/2]).

interseccao([], _) -> [];
interseccao([Head_a|A], B) ->
  case
    {lists:member(Head_a, B)} of
      {true} -> [Head_a | interseccao(A, B)];
      {false} -> interseccao(A, B)
  end.

% c(ex5).
% ex5:interseccao([3, 6, 5, 7], [9, 7, 5, 1, 3]).