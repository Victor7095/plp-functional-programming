-module(fatorial_cauda).
-export([start/0]).

% N funciona como um contador decrescente e P funciona como um acumulador. Quando N = 1, P já tem o valor do fatorial do N inicial, ou seja, não é preciso desempilhar as chamadas recursivas

fatorial_aux(1, P) -> P;
fatorial_aux(N, P) when N > 0 ->
	fatorial_aux(N-1, P*N).

fatorial_cauda(N) -> fatorial_aux(N, 1).

start() ->
    io:fwrite("~p", [fatorial_cauda(5)]).
