-module(uniao).
-export([start/0]).

uniao(A, B) ->
    lists:usort(A ++ B).

start() ->
    io:fwrite("~p", [uniao([1, 2 ,5], [1, 2, 3])]).