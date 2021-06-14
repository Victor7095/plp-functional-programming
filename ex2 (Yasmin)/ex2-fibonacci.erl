-module(ex2-fibonacci).
-export([start/0]).

fibonacci(N) when N < 3 -> 1; % a sequência inicia com 1 e 1
fibonacci(N) when N >= 2 ->
    fibonacci(N-1) + fibonacci(N-2).

start() ->
    io:fwrite("~p", [fibonacci(7)]).
