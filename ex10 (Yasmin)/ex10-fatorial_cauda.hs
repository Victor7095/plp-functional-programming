-- N funciona como um contador decrescente e P funciona como um acumulador. Quando N = 1, P já tem o valor do fatorial do N inicial, ou seja, não é preciso desempilhar as chamadas recursivas

fatorial_aux :: (Integer, Integer) -> Integer
fatorial_aux (1, p) = p
fatorial_aux (n, p) = fatorial_aux (n-1, p*n)

fatorial_cauda :: Integer -> Integer
fatorial_cauda n = fatorial_aux (n, 1)

main = do
    print (fatorial_cauda 5)
