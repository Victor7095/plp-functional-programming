sequencia :: (Integer, Integer) -> [Integer]
sequencia (1, m) = [m] -- quando n = 1, adiciona m no início da lista
sequencia (n, m) = sequencia (n-1, m) ++ [m+n-1] -- enquanto n > 1, adiciona M+(N-1) ao início da lista e decrementa n

main = do
    print (sequencia (5, 7))
