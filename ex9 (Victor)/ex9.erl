-module(ex9).
-import(lists, [filter/2]).
-export([compactar/1, count/1, nextDiffrent/1]).

count([]) -> 0;
count([_]) -> 0;
count([A, B|Tail]) -> 
  case {A == B} of 
    {true} -> 1 + count([B|Tail]);
    {false} -> 0
  end.

nextDiffrent([]) -> [];
nextDiffrent([_]) -> [];
nextDiffrent([A, B|Tail]) -> 
  case {A == B} of 
    {true} -> nextDiffrent([B|Tail]);
    {false} -> [B|Tail]
  end.

compactar([]) -> [];
compactar([_, _]) -> [];
compactar([A, B|Tail]) ->
  case {count([A,B|Tail]) > 0} of 
    {true} -> [[1 + count ([A,B|Tail]), A]] 
      ++ compactar(nextDiffrent([A, B| Tail]));
    {false} -> [A] ++ compactar(nextDiffrent([A, B| Tail]))
  end.

% c(ex9).
% ex9:compactar([2,2,2,3,4,4,2,9,5,2,4,5,5,5]).