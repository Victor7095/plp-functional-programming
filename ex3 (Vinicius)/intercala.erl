-module(intercala).
-export([intercala/2]).

% quando N = 1, adiciona M no início da lista
intercala([], []) -> [];
intercala([A|Tail_A], []) -> [A|Tail_A];
intercala([], [B|Tail_B]) -> [B|Tail_B];
intercala([A|Tail_A], [B|Tail_B]) -> [A, B] ++ intercala(Tail_A, Tail_B).
