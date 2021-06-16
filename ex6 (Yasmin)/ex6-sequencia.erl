-module(ex6-sequencia).
-export([start/0]).

% quando N = 1, adiciona M no início da lista
sequencia(1, M) -> [M];
sequencia(N, M) when N > 1 ->
     % enquanto N > 1, adiciona M+(N-1) ao início da lista e decrementa N
     sequencia(N-1, M) ++ [M+N-1].

start() ->
    io:fwrite("~p", [sequencia(5, 7)]).
