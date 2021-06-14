fibonacci :: Integer -> Integer
fibonacci 1 = 1 -- a sequência inicia com 1 e 1
fibonacci 2 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

main = do
    print (fibonacci 7)
