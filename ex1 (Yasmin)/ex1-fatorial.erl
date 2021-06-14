-module(ex1-fatorial).
-export([start/0]).

fatorial(0) -> 1; % caso base: 0! = 1
fatorial(N) when N > 0 ->
	N * fatorial(N-1). % recorrência

start() ->
    io:fwrite("~p", [fatorial(5)]).
